class JobsController < ApplicationController
  before_action :set_job, only: [:show, :update]

  def index
    @stores = Job.where(store: ["001", "002", "003", "004"]).distinct.pluck(:store).sort
    current_store = params[:store].presence || "004"
    one_day_ago = 1.day.ago

    contract_items = ContractItem.joins(:item)
                                 .includes(:contract)
                                 .where(item: { Inactive: false, BulkItem: false, CurrentStore: current_store })
                                 .where('TransactionItems.DDT >= ?', one_day_ago)
                                 .where.not('item.PartNumber LIKE ?', '%000')
                                 .where.not('item.PartNumber LIKE ?', '%[^0-9]%')
                                 .where.not('item.PartNumber LIKE ?', '')
                                 .where('TransactionItems.TXTY IN (?)', ["RR", "RX"])
                                 .where('TransactionItems.HRSC > ?', 0)
                                 .where('TransactionItems.QTY > ?', 0)
                                 .where.not('TransactionItems.CNTR LIKE ?', 'r%')
                                 .where.not('TransactionItems.CNTR LIKE ?', 't%')
                                 .select('TransactionItems.id, TransactionItems.ITEM, TransactionItems.CNTR, TransactionItems.DDT, item.Header, item.CurrentStore')

    item_nums = contract_items.map(&:ITEM)
    templates = Template.where(header: contract_items.map(&:Header)).index_by(&:header)
    ProcessJobs.new(contract_items, item_nums, templates).process_jobs

    item_headers = contract_items.map(&:Header).uniq
    @min_sum_hash = GroupItems.new(item_headers, current_store).group_and_calculate_min_sum

    @jobs = Job.includes(item: :contract_items).where(completed_at: nil)
    @jobs = @jobs.where(store: params[:store] || current_store)
    @jobs = @jobs.sort_by do |job|
      [
        @min_sum_hash[job.item.Header] || 0,
        job.item.Location.blank? ? 'a' : job.item.Location.to_s,
        job.last_return
      ]
    end
  end

  def show
    @job.build_answer if @job.answer.nil?
    @operators = Operator.where(Inactive: false)

    item = @job.item
    item_header = Item.find_by(KEY: item.Header)
    @accessories = item_header.accessories

    @template = Template.find_by(header: item.Header)
    if @template
      @job.template = @template
    else
      @job.template = Template.find_by!(header: "NOTEMPLATE")
    end
  end

  def update
    if @job.update(job_params)
      if params[:job][:answer_attributes]
        answers_hash = params[:job][:answer_attributes][:answers].to_unsafe_h
        @job.answer.update(answers: answers_hash)
      end

      puts "Job was successfully updated, checking photos..."
      if @job.photo1.present?
        puts "Photo1 is present: #{@job.photo1.url}"
      else
        puts "No photo1 uploaded"
      end

      redirect_to jobs_path, notice: 'Job was successfully updated'
    else
      render :show, alert: "Error updating job."
    end
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
      :photo0,
      :photo1,
      :photo2,
      :photo3,
      :photo4,
      :photo5,
      :photo6,
      :photo7,
      :header,
      :part_num,
      :opid,
      :opnm,
      :fuel_req,
      :fuel,
      :hours,
      answer_attributes: [:id, answers: {}]
    )
  end
end
