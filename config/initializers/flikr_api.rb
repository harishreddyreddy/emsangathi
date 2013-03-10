require 'flikr_config'

if Rails.env.production? && ENV['FLICKR_KEY'].blank? || ENV['FLICKR_SECRET'].blank?
  raise 'FLICKR_KEY or FLICKR_SECRET environment variable must be set!'
end

FlikrConfig.config[:flikr_key] = ENV['FLICKR_KEY']
FlikrConfig.config[:flikr_secret] = ENV['FLICKR_SECRET']