CarrierWave.configure do |config|
  config.cache_storage = :file
  config.fog_credentials = {
    provider:              'Cloudinary',
    cloud_name:            ENV.fetch("CLOUDINARY_CLOUD_NAME"),
    api_key:               ENV.fetch("CLOUDINARY_API_KEY"),
    api_secret:            ENV.fetch("CLOUDINARY_API_SECRET"),
  }
  config.fog_directory  = ENV.fetch("CLOUDINARY_CLOUD_NAME")
end
