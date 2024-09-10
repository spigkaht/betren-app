require 'cloudinary'
require 'cloudinary/carrier_wave'

CarrierWave.configure do |config|
  config.cache_storage = :file

  config.cloudinary_credentials = {
    cloud_name: ENV.fetch("CLOUDINARY_CLOUD_NAME"),
    api_key: ENV.fetch("CLOUDINARY_API_KEY"),
    api_secret: ENV.fetch("CLOUDINARY_API_SECRET")
  }
  config.storage = :cloudinary
end
