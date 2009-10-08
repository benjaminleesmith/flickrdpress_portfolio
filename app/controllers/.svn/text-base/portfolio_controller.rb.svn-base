class PortfolioController < ApplicationController
  def index
    @photoset = flickr.photosets.getPhotos({:photoset_id => FLICKR_CONFIG['photoset_id'], :extras => 'url_m'})
  end
end