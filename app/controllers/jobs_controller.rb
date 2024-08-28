class JobsController < ApplicationController
  def index
    one_day_ago = 1.day.ago
    contract_items = ContractItem.joins(:item)
                                 .where(item: { CurrentStore: "004" })
                                 .where('TransactionItems.DDT >= ?', one_day_ago)
                                 .where('TransactionItems.TXTY IN (?)', ["RR", "RX"])
                                 .where('TransactionItems.HRSC > ?', 0)
                                 .where('TransactionItems.QTY > ?', 0)
                                 .where.not('TransactionItems.CNTR LIKE ?', 'r%')
                                 .where.not('TransactionItems.CNTR LIKE ?', 't%')
                                 .select('TransactionItems.id, TransactionItems.ITEM, TransactionItems.CNTR, TransactionItems.DDT')

    contract_items.each do |contract_item|
      #find item by contract item NUM
      item = Item.find_by(NUM: contract_item.ITEM)

      #only process if item isn't inactive, bulk item, part number ends with 000
      if item.Inactive || item.BulkItem || item.PartNumber !~ /\A\d+\z/ || item.PartNumber.end_with?("000")
        puts "------------- item does not meet criteria ------------------"
      else
        last_job = Job.where(item_num: item.NUM).order(completed_at: :desc).first
        template = Template.find_by(header: item.Header)
        if last_job.nil?
          Job.create(item_num: item.NUM, store: item.CurrentStore, last_contract: contract_item.CNTR, last_return: contract_item.DDT, completed_at: nil, template: template)
        elsif last_job.completed_at.nil?
          puts "--------------- last job not completed ------------------"
        elsif contract_item.DDT > last_job.completed_at
          Job.create(item_num: item.NUM, store: item.CurrentStore, last_contract: contract_item.CNTR, last_return: contract_item.DDT, completed_at: nil, template: template)
        end
      end
    end

    current_store = "004"
    @stores = Job.where(store: ["001", "002", "003", "004"])
                 .distinct
                 .pluck(:store)
                 .sort

    @jobs = Job.where(completed_at: nil)

    if params[:store].present?
      @jobs = @jobs.where(store: params[:store])
    else
      @jobs = @jobs.where(store: current_store)
    end

    @jobs = @jobs.order(last_return: :desc)
  end

  def show
    @job = Job.find(params[:id])
    item = @job.item

    @template = Template.find_by(header: item.Header)
    if @template
      @job.template = @template
    else
      @job.template = Template.find(2)
    end
  end
end
