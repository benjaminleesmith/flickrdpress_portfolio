class FlickrPhoto < ActiveRecord::Base
  def self.load_photoset_photos(flickr_photoset_id = ::PORTFOLIO_CONFIG['flickr_photoset_id'])
    FlickrPhoto.destroy_all
    
    flickr.photosets.getPhotos({:photoset_id => ::PORTFOLIO_CONFIG['flickr_photoset_id'], :extras => 'url_l,owner_name,path_alias'})['photo'].each do |photo|      
      FlickrPhoto.create(
        :flickr_id => photo['id'],
        :pathalias => photo['pathalias'],
        :url => photo['url_l']
      )
    end
  end
end
