class GenerateJobsJob < ApplicationJob
  # queue_as :default

  # def perform
  #   one_day_ago = 1.day.ago.strftime('%Y-%m-%d')

  #   items = Item.where('LDATE >= ?', one_day_ago)
  #               .where(TYPE: ['H', 'T'])
  #               .where(Inactive: false)
  #               .where(BulkItem: false)
  #               .where("QTY > QYOT")
  #               .where("PartNumber NOT LIKE ?", '%000')

  #   items.each do |item|
  #     last_job = Job.where(item_num: item.NUM).order(completed_at: :desc).first

  #     if last_job.nil? || last_job.completed_at.nil? || item.LDATE > last_job.completed_at
  #       Job.create(item_num: item.NUM, completed_at: nil)

  #       duplicate_jobs = Job.where(item_num: item.NUM).order(created_at: :desc)
  #       if duplicate_jobs.count > 1
  #         oldest_job = duplicate_jobs.last
  #         oldest_job.destroy
  #       end
  #     end
  #   end
  # end
end
