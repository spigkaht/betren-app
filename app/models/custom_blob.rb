class CustomBlob < ActiveRecord::Base
  self.table_name = "active_storage_blobs"
  establish_connection :secondary

  has_many :attachments, class_name: 'CustomAttachment', foreign_key: 'blob_id', inverse_of: :blob, dependent: :destroy

  def self.build_after_unfurling(...)
    # Custom logic to build a blob
    super # or your own implementation that returns CustomBlob
  end

  def self.create_after_unfurling(...)
    # Custom logic to create a blob
    super # or your own implementation that returns CustomBlob
  end
end
