class CustomAttachment < ActiveRecord::Base
  self.table_name = "active_storage_attachments"
  establish_connection :secondary

  belongs_to :blob, class_name: 'CustomBlob', inverse_of: :attachments
end
