Rails.application.config.to_prepare do
  ActiveStorage::Attachment.class_eval do
    belongs_to :blob, class_name: 'CustomBlob', inverse_of: :attachments
  end
end
