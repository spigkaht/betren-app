class ProcessJobs
  def initialize(contract_items, store)
    @contract_items = contract_items
    @store = store
  end

  def process_jobs
    @contract_items.each do |contract_item|
      # find contract item's item number
      item_num = contract_item.ITEM
      # find latest job for item
      last_job = Job.where(item_num: contract_item.ITEM).order(created_at: :desc).first
      puts "== item num: #{item_num}, last job: #{last_job} =="
      # find template for item
      template = Template.find_by(header: contract_item.item.Header) || Template.find_by(header: "NOTEMPLATE")

      next if contract_item.contract.CONT != "" || contract_item.item.CurrentStore != @store || contract_item.item.QYOT.positive?
      next unless item_num && contract_item.contract.STAT != ""

      # create job
      if last_job.nil?
        Job.create(item_num: item_num, store: contract_item.CurrentStore, last_contract: contract_item.CNTR, last_return: contract_item.DDT, completed_at: nil, template: template)
      elsif last_job.completed_at.nil?
        puts "====== skipping, last job not completed yet ======"
      elsif contract_item.DDT.to_s.include?("00:00:00")
        puts "====== skipping, due date time is invalid ======" 
      elsif last_job
        if contract_item.DDT > last_job.completed_at
          Job.create(item_num: item_num, store: contract_item.CurrentStore, last_contract: contract_item.CNTR, last_return: contract_item.DDT, completed_at: nil, template: template)
        end
      end
    end
  end
end
