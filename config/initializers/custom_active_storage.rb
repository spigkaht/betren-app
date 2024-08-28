Rails.application.config.to_prepare do
  ActiveStorage::Blob.class_eval do
    def self.build_after_unfurling(...)
      CustomBlob.new(...)
    end

    def self.create_after_unfurling(...)
      CustomBlob.create!(...)
    end
  end
end
