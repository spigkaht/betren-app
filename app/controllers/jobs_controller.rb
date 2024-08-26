class JobsController < ApplicationController
  def index
    one_day_ago = 1.day.ago
    contract_items = ContractItem.where('DDT >= ?', one_day_ago)
                                 .where(TXTY: ["RR", "RX"])
                                 .where('QTY > 0')
                                 .where.not('CNTR LIKE ?', 'r%')
                                 .where.not('CNTR LIKE ?', 't%')

    contract_items.each do |contract_item|
      #find item by contract item NUM
      item = Item.find_by(NUM: contract_item.ITEM)

      #only process if item isn't inactive, bulk item, part number ends with 000
      if item.Inactive || item.BulkItem || item.PartNumber !~ /\A\d+\z/ || item.PartNumber.end_with?("000")
        puts "------------- item does not meet criteria ------------------"
        puts "Inactive: #{item.Inactive} BulkItem: #{item.BulkItem} Numeric PN: #{item.PartNumber !~ /\A\d+\z/} Ends 000: #{item.PartNumber.end_with?("000")}"
        puts "PART NUMBER: #{item.PartNumber}"
      else
        last_job = Job.where(item_num: item.NUM).order(completed_at: :desc).first

        if last_job.nil?
          Job.create(item_num: item.NUM, completed_at: nil)
        elsif last_job.completed_at.nil?
          puts "--------------- last job not completed ------------------"
        elsif contract_item.DDT > last_job.completed_at
          Job.create(item_num: item.NUM, completed_at: nil)

          # duplicate_jobs = Job.where(item_num: item.NUM).order(created_at: :desc)
          # if duplicate_jobs.count > 1
          #   oldest_job = duplicate_jobs.last
          #   oldest_job.destroy
          # end
        end
      end
    end

    @jobs = Job.where(completed_at: nil).order(created_at: :desc)
  end
end
