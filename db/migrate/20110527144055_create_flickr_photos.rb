class CreateFlickrPhotos < ActiveRecord::Migration
  def self.up
    create_table :flickr_photos do |t|
      t.string :flickr_id
      t.string :pathalias
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :flickr_photos
  end
end
