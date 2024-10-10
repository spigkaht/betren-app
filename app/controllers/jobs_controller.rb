class JobsController < ApplicationController
  before_action :set_job, only: [:show, :update, :related]

  def index
    # generate stores from all jobs
    @stores = ["001", "002", "003", "004"]
    # set current store based on params
    current_store = params[:store].presence || current_user.store
    # set cutoff for searching for new items to create jobs from
    one_day_ago = 1.day.ago

    # gather list of contract items to create jobs for
    contract_items = ContractItem.joins(:item)
                                 .includes(:contract)
                                 .where('TransactionItems.DDT >= ?', one_day_ago)
                                 .where(item: { Inactive: false, BulkItem: false, CurrentStore: current_store })
                                 .where('TransactionItems.TXTY IN (?)', ["RR", "RX"])
                                 .where('TransactionItems.HRSC > ?', 0)
                                 .where('TransactionItems.QTY > ?', 0)
                                 .where.not('TransactionItems.CNTR LIKE ?', 'r%')
                                 .where.not('TransactionItems.CNTR LIKE ?', 't%')
                                 .where.not('item.PartNumber LIKE ?', '%000')
                                 .where.not('item.PartNumber LIKE ?', '%[^0-9]%')
                                 .where.not('item.PartNumber LIKE ?', '')
                                 .select('TransactionItems.id, TransactionItems.ITEM, TransactionItems.CNTR, TransactionItems.DDT, item.Header, item.CurrentStore')

    # collect list of item nums only for all contract items
    item_nums = contract_items.map(&:ITEM)
    # collect list of templates for all contract items
    templates = Template.where(header: contract_items.map(&:Header)).index_by(&:header)
    # process jobs for all contract items
    # checks if any jobs exist for item, creates a job if none exist or last job has been completed
    ProcessJobs.new(contract_items, item_nums, templates, current_store).process_jobs

    # collect all jobs that have not been completed
    jobs = Job.includes(item: :contract_items).where(completed_at: nil)
    # refine jobs to current store & destroy jobs at other stores / back onhire
    jobs = jobs.where(store: params[:store] || current_store).where(completed_at: nil)

    # collect list of headers for all contract items
    item_headers = jobs.map { |job| job.item.Header }.uniq
    # group all items by header, calculate available quantity, collate in hash for each item
    @min_sum_hash = GroupItems.new(item_headers, current_store).group_and_calculate_min_sum

    @reservation_headers = ContractItem.joins(:contract, :item)
                                       .where("CONVERT(date, OutDate) = ?", 1.day.from_now.to_date)
                                       .where(contract: { STR: current_store })
                                       .pluck(:header)
                                       .reject(&:blank?)

    jobs.each do |job|
      if @reservation_headers.include?(job.item.Header)
        job.reserved = 1.day.from_now
        job.reserved_store = current_store
      else
        job.reserved = nil
        job.reserved_store = nil
      end
    end

    # sort jobs
    @jobs = jobs.sort_by do |job|
      is_numeric_location = job.item.Location.to_s.match?(/^\d+$/)
      is_reserved = job.reserved.present? if @min_sum_hash[job.item.Header] < @reservation_headers.count(job.item.Header)

      [
        is_reserved ? 0 : 1,
        is_reserved ? nil : (is_numeric_location ? 0 : 1),
        is_reserved ? nil : (is_numeric_location ? job.item.Location.to_i : @min_sum_hash[job.item.Header] || 0),
        is_reserved ? nil : (is_numeric_location ? nil : (job.item.Location.blank? ? 'a' : job.item.Location.to_s)),
        is_reserved ? nil : job.last_return
      ]
    end

    @jobs = @jobs
  end

  def show
    @job.build_answer if @job.answer.nil?
    @operators = Operator.where(Inactive: false)

    item = @job.item
    item_header = Item.find_by(KEY: item.Header)
    @accessories = item_header.accessories

    accessory_items = @accessories.map { |accessory| Item.find(accessory.ItemKey) }
    @dbmm = true if accessory_items.any? { |accessory| accessory.FUEL.end_with? "MM" }

    @template = Template.find_by(header: item.Header)
    if @template
      @job.template = @template
    else
      @job.template = Template.find_by!(header: "NOTEMPLATE")
    end
  end

  def create
    item = Item.find_by(PartNumber: params[:part_number])
    template = Template.find_by(header: item.Header)
    last_return = item.LDATE
    last_contract = item.CNTR

    if item
      @job = Job.new(item: item, template: template, store: current_user.store, last_return: last_return, last_contract: last_contract)
      if @job.save
        redirect_to @job, notice: 'Job was successfully created.'
      else
        redirect_to jobs_path, alert: 'Job creation failed'
      end
    else
      redirect_to jobs_path, alert: 'Item not found.'
    end
  end

  def update
    if @job.update(job_params)

      if params[:job][:answer_attributes]
        answers_hash = params[:job][:answer_attributes][:answers].to_unsafe_h
        @job.answer.update(answers: answers_hash)
      end

      contract_num = @job.item.CNTR
      contract_items = ContractItem.joins(:item)
                                   .where(item: { Inactive: false, BulkItem: false })
                                   .where.not('item.PartNumber LIKE ?', '%000')
                                   .where.not('item.PartNumber LIKE ?', '%[^0-9]%')
                                   .where.not('item.PartNumber LIKE ?', '')
                                   .where(CNTR: contract_num)
                                   .where('TransactionItems.HRSC > ?', 0)
                                   .where('TransactionItems.QTY > ?', 0)

      if contract_items.count > 1
        redirect_to related_job_path(@job)
      else
        redirect_to jobs_path, notice: 'Job was successfully updated'
      end
    else
      render :show, alert: "Error updating job"
    end
  end

  def related
    @related_jobs = Job.where(last_contract: @job.last_contract)
                       .where(completed_at: nil)
    redirect_to jobs_path if @related_jobs.count.zero?
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(
      :id,
      :item_num,
      :completed_at,
      :store,
      :header,
      :part_num,
      :opid,
      :opnm,
      :fuel_req,
      :fuel,
      :hours,
      :dbmm,
      :photo,
      :photo1,
      :photo2,
      :photo3,
      :photo4,
      :photo5,
      :photo6,
      :photo7,
      :photo8,
      :photo_url,
      :photo_url1,
      :photo_url2,
      :photo_url3,
      :photo_url4,
      :photo_url5,
      :photo_url6,
      :photo_url7,
      :photo_url8,
      photo_urls: [],
      answer_attributes: [:id, answers: {}]
    )
  end
end
