class ImageUploadJob < ApplicationJob
  queue_as :default

  def perform(job_id, photo_urls)
    job = Job.find(job_id)

    # Process each Cloudinary URL
    photo_urls.each do |photo_field, cloudinary_url|
      Rails.logger.info "Processing #{photo_field} for job ##{job.id}"

      # Since it's already uploaded to Cloudinary, you don't need to cache or store again.
      # If needed, you can manipulate the image further using Cloudinary transformations.

      # Optionally, log or perform additional tasks
      Rails.logger.info "#{photo_field} for job ##{job.id} successfully processed."
    end

    Rails.logger.info "Completed photo processing for job ##{job.id}"

  #   # Process each photo path
  #   photo_paths.each do |photo_field, file_path|
  #     if File.exist?(file_path)
  #       Rails.logger.info "Uploading #{photo_field} for job ##{job.id}"

  #       # Open the file from the path and pass it to CarrierWave
  #       File.open(file_path) do |file|
  #         uploader = job.send(photo_field)
  #         uploader.cache!(file)  # Cache the file for CarrierWave
  #         uploader.store!        # Upload to Cloudinary
  #       end

  #       Rails.logger.info "#{photo_field} for job ##{job.id} successfully uploaded."
  #     else
  #       Rails.logger.warn "#{photo_field} file not found for job ##{job.id}."
  #     end
  #   end

  #   # Cleanup temporary files after the upload
  #   temp_dir = Rails.root.join('tmp', 'uploads', "#{job.id}")
  #   FileUtils.rm_rf(temp_dir) if Dir.exist?(temp_dir)

  #   Rails.logger.info "Completed photo upload process for job ##{job.id}"
  end
end
