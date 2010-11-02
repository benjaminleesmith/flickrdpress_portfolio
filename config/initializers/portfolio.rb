# Copyright 2009, 2010 Benjamin Lee Smith <benjamin.lee.smith@gmail.com>
#
# This file is part of Voltron Portfolio.
# Voltron Portfolio is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Voltron Portfolio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Voltron Portfolio.  If not, see <http://www.gnu.org/licenses/>.

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
