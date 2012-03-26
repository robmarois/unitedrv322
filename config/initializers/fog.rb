# ./config/initializers/carrierwave.rb


CarrierWave.configure do |config|
      config.s3_access_key_id = "AKIAIRGQJ37RAEJTCRQA"
      config.s3_secret_access_key = "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"
      config.s3_bucket = "united_rv"
    end
    
    
Fog.credentials_path = Rails.root.join('config/fog_credentials.yml')

CarrierWave.configure do |config|
  	  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_credentials = {
      :provider => 'AWS'
  }
  config.fog_directory = "united_rv" # required
  
end