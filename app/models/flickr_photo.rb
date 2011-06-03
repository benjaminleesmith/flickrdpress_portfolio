class FlickrPhoto < ActiveRecord::Base
  def self.load_photoset_photos(flickr_photoset_id = ::PORTFOLIO_CONFIG['flickr_photoset_id'])
    FlickrPhoto.destroy_all
    
    Flickr.photos_in_set(flickr_photoset_id).each do |photo|      
      FlickrPhoto.create(
        :flickr_id => photo['id'],
        :pathalias => photo['pathalias'],
        :url => photo['url_l']
      )
    end
  end
end
