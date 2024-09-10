require 'cloudinary'
require 'cloudinary/carrier_wave'

CarrierWave.configure do |config|
  config.cache_storage = :file # This is for caching files locally before upload
  config.asset_host = ENV['CLOUDINARY_URL'] # Optional, can use for better integration with asset pipelines

  Cloudinary.config do |cloudinary_config|
    cloudinary_config.cloud_name = ENV['CLOUDINARY_CLOUD_NAME']
    cloudinary_config.api_key = ENV['CLOUDINARY_API_KEY']
    cloudinary_config.api_secret = ENV['CLOUDINARY_API_SECRET']
    cloudinary_config.secure = true
  end
end
