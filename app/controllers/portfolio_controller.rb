class PortfolioController < ApplicationController
  def index
    @photoset = Flickr.photos
    @posts = Wordpress.posts
  end
end