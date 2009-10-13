class PortfolioController < ApplicationController
  def index
    @photoset = Flickr.photos
  end
end