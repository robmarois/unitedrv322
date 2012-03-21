# ./config/initializers/carrierwave.rb


CarrierWave.configure do |config|
      config.s3_access_key_id = "0N32ZH1TB8N1VEVXMQR2"
      config.s3_secret_access_key = "OTiKz9yH8VpGzbhPR5LmDBcyEl2d+LJRKKtMTsb3"
      config.s3_bucket = "unitedrv"
    end
    
    
Fog.credentials_path = Rails.root.join('config/fog_credentials.yml')

CarrierWave.configure do |config|
  	  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_credentials = {
      :provider => 'AWS'
  }
  config.fog_directory = "unitedrv" # required
  
end