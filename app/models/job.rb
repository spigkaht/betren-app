class Job < ApplicationRecord
  establish_connection :secondary
  mount_uploader :photo, PhotoUploader
  mount_uploader :photo1, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader
  mount_uploader :photo4, PhotoUploader
  mount_uploader :photo5, PhotoUploader
  mount_uploader :photo6, PhotoUploader
  mount_uploader :photo7, PhotoUploader
  mount_uploader :photo8, PhotoUploader

  # include CarrierWave::Backgrounder::Delay

  # process_in_background :photo
  # process_in_background :photo1
  # process_in_background :photo2
  # process_in_background :photo3
  # process_in_background :photo4
  # process_in_background :photo5
  # process_in_background :photo6
  # process_in_background :photo7
  # process_in_background :photo8

  belongs_to :item, primary_key: 'NUM', foreign_key: 'item_num', class_name: 'Item'
  belongs_to :template
  has_one :answer, dependent: :destroy
  accepts_nested_attributes_for :answer

  scope :completed, -> { where.not(completed_at: nil) }
  scope :incomplete, -> { where(completed_at: nil) }

  def self.for_items_with_return_dates
    joins(:item).where('items.LDATE > jobs.completed_at OR jobs.completed_at IS NULL')
  end

  # def upload_photos_to_cloudinary
  #   Rails.logger.info "Starting photo upload process for job ##{self.id}"

  #   (0..template.photo_qty - 1).each do |i|
  #     photo_field = "photo#{i+1}".to_sym
  #     photo = self.send(photo_field)

  #     if photo.present?
  #       Rails.logger.info "Processing #{photo_field} for job ##{self.id}"

  #       # Log the cache name to ensure it's being handled properly
  #       if photo.cache_name.present?
  #         Rails.logger.info "#{photo_field} cache name: #{photo.cache_name}"

  #         # Attempt to retrieve from cache and upload
  #         begin
  #           photo.retrieve_from_cache!(photo.cache_name)
  #           photo.store!  # This is where the upload to Cloudinary should happen
  #           Rails.logger.info "#{photo_field} for job ##{self.id} successfully uploaded to Cloudinary."
  #         rescue => e
  #           Rails.logger.error "Error uploading #{photo_field} for job ##{self.id}: #{e.message}"
  #         end
  #       else
  #         Rails.logger.warn "#{photo_field} for job ##{self.id} does not have a cache name and was not uploaded."
  #       end
  #     else
  #       Rails.logger.info "#{photo_field} is not present for job ##{self.id}"
  #     end
  #   end

  #   self.save!
  #   Rails.logger.info "Completed photo upload process for job ##{self.id}"
  # end
end
