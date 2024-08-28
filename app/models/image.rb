class Image < ApplicationRecord
  establish_connection :secondary

  belongs_to :template

  has_one_attached :photo, service: :custom_blob_service

  def self.custom_blob_service
    CustomBlob
  end
end
