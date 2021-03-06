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

class Wordpress
  def self.posts
    source = ::PORTFOLIO_CONFIG['wordpress_rss_url']
    content = ''
    open(source) do |s| content = s.read end
    REXML::Document.new(content).root.elements.to_a('channel/item')
  end
end