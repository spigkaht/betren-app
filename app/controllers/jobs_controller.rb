class JobsController < ApplicationController
  before_action :set_job, only: [:show, :update]

  def index
    one_day_ago = 1.day.ago
    contract_items = ContractItem.joins(:item)
                                  .where(item: { Inactive: false, BulkItem: false })
                                  .where.not('item.PartNumber LIKE ?', '%000')
                                  .where.not('item.PartNumber LIKE ?', '%[^0-9]%')
                                  .where('TransactionItems.DDT >= ?', one_day_ago)
                                  .where('TransactionItems.TXTY IN (?)', ["RR", "RX"])
                                  .where('TransactionItems.HRSC > ?', 0)
                                  .where('TransactionItems.QTY > ?', 0)
                                  .where.not('TransactionItems.CNTR LIKE ?', 'r%')
                                  .where.not('TransactionItems.CNTR LIKE ?', 't%')
                                  .select('TransactionItems.id, TransactionItems.ITEM, TransactionItems.CNTR, TransactionItems.DDT, item.Header, item.CurrentStore')

    item_nums = contract_items.map(&:ITEM)

    # Step 1: Retrieve all items and calculate MIN (QTY - QYOT), grouped by Header
    items = Item.where(NUM: item_nums).select(:NUM, :Header, :QTY, :QYOT)

    grouped_items_by_header = items.group_by(&:Header).transform_values do |group|
      group.sum { |item| item.QTY - item.QYOT }
    end

    jobs = Job.where(item_num: item_nums).order(completed_at: :desc).group_by(&:item_num)
    templates = Template.where(header: contract_items.map(&:Header)).index_by(&:header)

    contract_items.each do |contract_item|
      item_num = contract_item.ITEM
      item_jobs = jobs[item_num] || []
      last_job = item_jobs.first
      template = templates[contract_item.Header] || Template.find_by(header: "NOTEMPLATE")

      next unless item_num || contract_item.contract.STAT != ""
      next if contract_item.contract.CONT != ""

      if last_job.nil?
        Job.create(item_num: item_num, store: contract_item.CurrentStore, last_contract: contract_item.CNTR, last_return: contract_item.DDT, completed_at: nil, template: template)
      elsif last_job.completed_at.nil?
        puts "--------------- last job not completed ------------------"
      elsif contract_item.DDT > last_job.completed_at
        Job.create(item_num: item_num, store: contract_item.CurrentStore, last_contract: contract_item.CNTR, last_return: contract_item.DDT, completed_at: nil, template: template)
      end
    end

    current_store = "004"
    @stores = Job.where(store: ["001", "002", "003", "004"]).distinct.pluck(:store).sort

    # Step 2: Retrieve jobs and include associated items
    @jobs = Job.includes(:item).where(completed_at: nil)

    # Filter by store if needed
    if params[:store].present?
      @jobs = @jobs.where(store: params[:store])
    else
      @jobs = @jobs.where(store: current_store)
    end

    # Step 3: Sort jobs by MIN, then Location, then last_return
    @jobs = @jobs.sort_by do |job|
      min_sum = grouped_items_by_header[job.item.Header] || 0 # Use grouped MIN values (QTY - QYOT)
      location = job.item.Location.blank? ? 'a' : job.item.Location # Handle blank locations
      [-min_sum, location, job.last_return] # Sort by MIN descending, then location, and last_return
    end

  end

  def show
    item = @job.item

    @template = Template.find_by(header: item.Header)
    if @template
      @job.template = @template
    else
      @job.template = Template.find_by!(header: "NOTEMPLATE")
    end
  end

  def update
    @job.completed_at = Time.now
    if @job.update(job_params)
      create_answers(@job, params[:job]) if params[:job]
      redirect_to jobs_path, notice: 'Job was successfully updated'
    else
      render :show
    end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:item_num, :last_return, :last_contract, :store, :completed_at)
  end

  def create_answers(job, answers_params)
    answers_params.each do |answer_params|
      job.answers.create(
        content: answer_params
      )
    end
  end
end
