class ProcessJobs
  def initialize(contract_items, item_nums, templates)
    @contract_items = contract_items
    @item_nums = item_nums
    @templates = templates
  end

  def process_jobs
    jobs = Job.where(item_num: @item_nums).order(completed_at: :desc).group_by(&:item_num)

    @contract_items.each do |contract_item|
      item_num = contract_item.ITEM
      item_jobs = jobs[item_num] || []
      last_job = item_jobs.first
      template = @templates[contract_item.Header] || Template.find_by(header: "NOTEMPLATE")

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
  end
end
