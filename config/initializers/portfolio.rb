begin
  ::PORTFOLIO_CONFIG = YAML.load_file("#{::Rails.root.to_s}/config/config.yml")[::Rails.env]
rescue
  puts 'config.yml not found, loading from env vars'
  ::PORTFOLIO_CONFIG = {}
  ::PORTFOLIO_CONFIG['title'] = ENV['vp_title']
  ::PORTFOLIO_CONFIG['flickr_key'] = ENV['vp_flickr_key']
  ::PORTFOLIO_CONFIG['flickr_secret'] = ENV['vp_flickr_secret']
  ::PORTFOLIO_CONFIG['flickr_photoset_id'] = ENV['vp_flickr_photoset_id']
  ::PORTFOLIO_CONFIG['wordpress_rss_url'] = ENV['vp_wordpress_rss_url']
  ::PORTFOLIO_CONFIG['google_analytics_web_property_id'] = ENV['vp_google_analytics_web_property_id']
end

require 'flickraw'
FlickRaw.api_key = ::PORTFOLIO_CONFIG['flickr_key']
FlickRaw.shared_secret = ::PORTFOLIO_CONFIG['flickr_secret']

require 'rss/2.0'
require 'open-uri'
