CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:          'AWS',
    aws_access_key_id:     ENV.fetch('S3_KEY'),
    aws_secret_access_key: ENV.fetch('S3_SECRET'),
    region:            ENV.fetch('S3_REGION')
  }

  config.fog_directory = ENV.fetch('S3_BUCKET')
end