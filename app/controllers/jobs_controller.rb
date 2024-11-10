class JobsController < ApplicationController
  before_action :set_job, only: [:show, :update, :related]

  def index
    # generate stores from all jobs
    @stores = ["001", "002", "003", "004"]
    # set current store based on params
    current_store = params[:store].presence || current_user.store
    # set cutoff for searching for new items to create jobs from
    three_months_ago = 3.months.ago

    # gather list of contract items to create jobs for
    contract_items = ContractItem.joins(:item)
      .includes(:contract)
      .where('TransactionItems.DDT >= ?', three_months_ago)
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

    # Step 2: Process jobs for all contract items
    # ProcessJobs.new(contract_items, current_store).process_jobs

    # get most recent job for each item
    # most_recent_jobs = Job.joins(
    #   "INNER JOIN (
    #     SELECT item_num, MAX(created_at) AS max_created_at
    #     FROM jobs
    #     WHERE store = #{Job.sanitize_sql_for_conditions(['?', current_store])}
    #     GROUP BY item_num
    #   ) AS most_recent_jobs ON jobs.item_num = most_recent_jobs.item_num AND jobs.created_at = most_recent_jobs.max_created_at"
    # ).where(store: current_store, item_num: contract_items.map(&:ITEM))

    # items_to_complete = contract_items.map do |item|
    #   last_job = most_recent_jobs.find_by(item_num: item.ITEM)
    #   item if last_job.nil? || last_job.completed_at.nil? || item.DDT > last_job.created_at
    # end

    # items_with_no_jobs = contract_items.select { |item| most_recent_jobs.none? { |job| job.item_num == item.ITEM } }
    # items_with_uncompleted_jobs = contract_items.select do |item|
    #   last_job = most_recent_jobs.find { |job| job.item_num == item.ITEM }
    #   last_job && last_job.completed_at.nil?
    # end
    # items_with_newer_ddt = contract_items.select do |item|
    #   last_job = most_recent_jobs.find { |job| job.item_num == item.ITEM }
    #   last_job && item.DDT > last_job.created_at
    # end

    # puts "================================== ITEM COUNT ==========================================="
    # p most_recent_jobs.count
    # p items_to_complete.count

    # puts "Items with no jobs: #{items_with_no_jobs.count}"
    # puts "Items with uncompleted jobs: #{items_with_uncompleted_jobs.count}"
    # puts "Items with newer DDT: #{items_with_newer_ddt.count}"

    # Join the original jobs table with the subquery to get full job details
    # jobs = Job.where(store: current_store)
    # .where(completed_at: nil)
    # .where(item_num: contract_items.map(&:ITEM))
    # .select('DISTINCT ON (item_num) jobs.*')
    # .order('item_num, created_at DESC')

    # jobs.map do |job|
    #   puts "=================== JOB ======================"
    #   puts "job: #{job}"
    #   contract_item = contract_items.find_by(ITEM: job.item_num)
    #   puts "================== DETAILS ======================="
    #   puts "contract item: #{contract_item.item.Name}"
    #   puts "plant num: #{contract_item.item.PartNumber}"
    #   puts "ddt: #{contract_item.DDT}"
    #   puts "completed at: #{job.completed_at}"
    #   puts "=================== PASS / FAIL ======================"
    #   if job.completed_at
    #     puts contract_item.DDT > job.completed_at
    #   else
    #     puts "nil"
    #   end

    #   job if contract_item.DDT > job.created_at
    # end

    # Step 4: Filter jobs based on the contract item's DDT
    # jobs = recent_jobs.select do |recent_job|
    #   puts "======================= RECENT JOB ================================="
    #   p recent_job
    #   puts "job id: #{recent_job.id}"
    #   puts "job item num: #{recent_job.item_num}"
    #   contract_item = contract_items.find { |ci| ci.ITEM == recent_job.item_num }
    #   puts "====================== CONTRACT ITEM ==============================="
    #   puts "item name: #{contract_item.item.Name}"
    #   puts "item num: #{contract_item.ITEM}"
    #   puts "ddt: #{contract_item.DDT}"
    #   contract_item && contract_item.DDT > recent_job.max_created_at
    # end

    #  puts "============================ JOBS ==================================="
    #   p jobs

    jobs = []

    # collect list of headers for all contract items
    item_headers = jobs.map { |job| job.item.Header }.uniq
    # group all items by header, calculate available quantity, collate in hash for each item
    # @min_sum_hash = GroupItems.new(item_headers, current_store).group_and_calculate_min_sum

    @reservation_headers = ContractItem.joins(:contract, :item)
                                       .where("CONVERT(date, OutDate) = ?", 1.day.from_now.to_date)
                                       .where(contract: { STR: current_store })
                                       .pluck(:header)
                                       .reject(&:blank?)

    reservation_count = @reservation_headers.tally

    @min_sum_hash = GroupItems.new(item_headers, current_store, jobs).group_and_calculate_min_sum(reservation_count)

    jobs.each do |job|
      if reservation_count[job.item.Header] && reservation_count[job.item.Header].to_i > @min_sum_hash[job.item.Header].to_i
        job.reserved = 1.day.from_now
        job.reserved_store = current_store
        reservation_count[job.item.Header] = reservation_count[job.item.Header] - 1
      else
        job.reserved = nil
        job.reserved_store = nil
      end
    end

    # sort jobs
    @jobs = jobs.sort_by do |job|
      is_numeric_location = job.item.Location.to_s.match?(/^\d+$/)
      is_reserved = job.reserved.present? if @min_sum_hash[job.item.Header]

      [
        is_reserved ? 0 : 1,
        is_reserved ? nil : (is_numeric_location ? 0 : 1),
        is_reserved ? nil : (is_numeric_location ? job.item.Location.to_i : @min_sum_hash[job.item.Header] || 0),
        is_reserved ? nil : (is_numeric_location ? nil : (job.item.Location.blank? ? 'a' : job.item.Location.to_s)),
        is_reserved ? nil : job.last_return
      ]
    end

    @jobs = @jobs

    # contract_items = ContractItem
    #   .joins(:item)
    #   .includes(:contract)
    #   .where('TransactionItems.DDT >= ?', three_months_ago)
    #   .where(item: { Inactive: false, BulkItem: false, CurrentStore: current_store })
    #   .where('TransactionItems.TXTY IN (?)', ["RR", "RX"])
    #   .where('TransactionItems.HRSC > ?', 0)
    #   .where('TransactionItems.QTY > ?', 0)
    #   .where.not('TransactionItems.CNTR LIKE ?', 'r%')
    #   .where.not('TransactionItems.CNTR LIKE ?', 't%')
    #   .where.not('item.PartNumber LIKE ?', '%000')
    #   .where.not('item.PartNumber LIKE ?', '%[^0-9]%')
    #   .where.not('item.PartNumber LIKE ?', '')
    #   .select('TransactionItems.id, TransactionItems.ITEM, TransactionItems.CNTR, TransactionItems.DDT, item.Header, item.CurrentStore')
    #   .group_by(&:ITEM)

    # contract_items_with_latest_ddt = contract_items.transform_values do |items|
    #   items.max_by(&:DDT)
    # end

    # # Step 2: Retrieve the latest job per item in one query, allowing for `completed_at` to be nil
    # latest_jobs = Job
    #   .where(item_num: contract_items_with_latest_ddt.keys)
    #   .order(item_num: :asc, completed_at: :desc)
    #   .select('DISTINCT ON (item_num) *')
    #   .group_by(&:item_num)

    # # Step 3: Compare DDT with the latest job's completed_at and collect matching jobs
    # matching_jobs = []

    # contract_items_with_latest_ddt.each do |item_num, contract_item|
    # job = latest_jobs[item_num]&.first # Get the latest job for the item, if it exists
    # # Include jobs with nil `completed_at` or where `DDT` is more recent than `completed_at`
    # if job && (job.completed_at.nil? || contract_item.DDT > job.completed_at)
    #   matching_jobs << job
    # end
    # end

    # # Step 4: Convert the array to an ActiveRecord Relation
    # matching_jobs_relation = Job.where(id: matching_jobs.map(&:id))

    # @jobs = matching_jobs_relation
  end

  def show
    @job.build_answer unless @job.answer.present?
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
    last_contract = item.CNTR
    contract_item = ContractItem.where(ITEM: item.NUM).find_by(CNTR: last_contract)
    last_return = contract_item.DDT
    template = Template.find_by(header: item.Header)

    if item
      @job = Job.new(item: item, template: template, store: current_user.store, last_return: last_return, last_contract: last_contract)

      if params[:job_ids]
        @jobs = Job.find(params[:job_ids])
      end

      if @jobs
        @jobs.each do |job|
          if job.item_num == item.NUM
            redirect_to jobs_path, alert: 'Item is already on the list below' and return
          end
        end
      end
      
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
      redirect_to job_path(@job)
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
      :photo_url,
      :photo_url1,
      :photo_url2,
      :photo_url3,
      :photo_url4,
      :photo_url5,
      :photo_url6,
      :photo_url7,
      :photo_url8,
      answer_attributes: [:id, answers: {}]
    )
  end
end
