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

module PortfolioHelper
  def photo_width(photo)
    if photo.width_l.to_i > photo.height_l.to_i
      500
    else
      ((500.0/photo.height_l.to_f) * photo.width_l.to_i).to_i
    end
  end

  def photo_height(photo)
    if photo.width_l.to_i > photo.height_l.to_i
      ((500.0/photo.width_l.to_f) * photo.height_l.to_i).to_i
    else
      500
    end
  end
  
  def photo_source(photo)
    "http://www.flickr.com/photos/#{photo.pathalias}/#{photo.id}"
  end
end
