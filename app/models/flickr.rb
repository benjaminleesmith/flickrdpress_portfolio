class Flickr
  def self.photos
    flickr.photosets.getPhotos({:photoset_id => ::PORTFOLIO_CONFIG['flickr_photoset_id'], :extras => 'url_l,owner_name,path_alias'})
  end
end