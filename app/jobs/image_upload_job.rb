class ImageUploadJob < ApplicationJob
  queue_as :default

  def perform(job_id)
    job = Job.find(job_id)
    job.template.photo_qty.times do |i|
      photo = job.send("photo#{i+1}")
      photo.recreate_versions! if photo.present?
    end
  end
end
