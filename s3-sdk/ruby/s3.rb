require 'aws-sdk-s3'
require 'pry'
require 'securerandom'

# Get AWS credentials and region from environment or default config
s3_client = Aws::S3::Client.new(
  region: ENV['AWS_REGION'] || 'us-east-1' 
)

begin
  # List all buckets
  response = s3_client.list_buckets

  puts "Buckets in your account:"
  response.buckets.each do |bucket|
    puts "- #{bucket.name}"
  end

rescue Aws::S3::Errors::ServiceError => e
  puts "Error listing buckets: #{e.message}"
end
