class Flickr
  def self.photos
    flickr.photosets.getPhotos({:photoset_id => FLICKR_CONFIG['photoset_id'], :extras => 'url_l,owner_name,path_alias'})
  end
end