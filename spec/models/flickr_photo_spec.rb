require 'spec_helper'

describe FlickrPhoto do
  it 'should save flickr photo data' do
    FlickrPhoto.count.should == 0
    
    Flickr.expects(:photos_in_set).returns(
      [
        {"height_l"=>"683", "farm"=>4, "title"=>"queen creek - mine area 060", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"2916288018", "server"=>"3179", "secret"=>"e39da30707", "url_l"=>"http://farm4.static.flickr.com/3179/2916288018_e39da30707_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"},
        {"height_l"=>"683", "farm"=>4, "title"=>"queen creek - mine area 209", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"2916312136", "server"=>"3077", "secret"=>"cb6bede74b", "url_l"=>"http://farm4.static.flickr.com/3077/2916312136_cb6bede74b_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"683", "farm"=>4, "title"=>"queen creek - oak flats 076", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"2957533666", "server"=>"3254", "secret"=>"0d234d081a", "url_l"=>"http://farm4.static.flickr.com/3254/2957533666_0d234d081a_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"683", "farm"=>4, "title"=>"klime 251", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"3071866076", "server"=>"3153", "secret"=>"ae38950dc0", "url_l"=>"http://farm4.static.flickr.com/3153/3071866076_ae38950dc0_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"1024", "farm"=>4, "title"=>"climbmax bouldering comp ABS 10 270", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"3089681459", "server"=>"3268", "secret"=>"f918334e2c", "url_l"=>"http://farm4.static.flickr.com/3268/3089681459_f918334e2c_b.jpg", "width_l"=>"683", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"1024", "farm"=>3, "title"=>"gumby wall rock climbing", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"3639437137", "server"=>"2477", "secret"=>"f2828aff7b", "url_l"=>"http://farm3.static.flickr.com/2477/3639437137_f2828aff7b_b.jpg", "width_l"=>"683", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"683", "farm"=>4, "title"=>"enchanted tower", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"3641664570", "server"=>"3016", "secret"=>"624afa98b2", "url_l"=>"http://farm4.static.flickr.com/3016/3641664570_624afa98b2_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"683", "farm"=>4, "title"=>"enchanted tower", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"3641681342", "server"=>"3333", "secret"=>"0d3bfaa940", "url_l"=>"http://farm4.static.flickr.com/3333/3641681342_0d3bfaa940_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"911", "farm"=>4, "title"=>"flash minicomp", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"3641724228", "server"=>"3357", "secret"=>"47ca7f7163", "url_l"=>"http://farm4.static.flickr.com/3357/3641724228_47ca7f7163_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"1024", "farm"=>4, "title"=>"flash minicomp", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"3640900125", "server"=>"3543", "secret"=>"42fa6d7962", "url_l"=>"http://farm4.static.flickr.com/3543/3640900125_42fa6d7962_b.jpg", "width_l"=>"866", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"683", "farm"=>3, "title"=>"groom creek campout 2009", "isprimary"=>"1", "pathalias"=>"benjaminsmith", "id"=>"3984863348", "server"=>"2576", "secret"=>"4c8116f2e2", "url_l"=>"http://farm3.static.flickr.com/2576/3984863348_4c8116f2e2_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"1024", "farm"=>2, "title"=>"the needles: black magic/magic dragon", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"4734747604", "server"=>"1023", "secret"=>"17d1319028", "url_l"=>"http://farm2.static.flickr.com/1023/4734747604_17d1319028_b.jpg", "width_l"=>"768", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"683", "farm"=>5, "title"=>"dandelions", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"4756162022", "server"=>"4138", "secret"=>"9dd63f7c75", "url_l"=>"http://farm5.static.flickr.com/4138/4756162022_9dd63f7c75_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"1024", "farm"=>5, "title"=>"Julia Pfeiffer State Park", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"4755550595", "server"=>"4095", "secret"=>"ee365b1c63", "url_l"=>"http://farm5.static.flickr.com/4095/4755550595_ee365b1c63_b.jpg", "width_l"=>"683", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"1024", "farm"=>5, "title"=>"Camel Rock", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"4861412751", "server"=>"4081", "secret"=>"a6eba3caba", "url_l"=>"http://farm5.static.flickr.com/4081/4861412751_a6eba3caba_b.jpg", "width_l"=>"683", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"683", "farm"=>5, "title"=>"Crater Lake", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"4862109802", "server"=>"4074", "secret"=>"532751bafc", "url_l"=>"http://farm5.static.flickr.com/4074/4862109802_532751bafc_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"1024", "farm"=>5, "title"=>"Portland Rose Garden", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"4954328879", "server"=>"4116", "secret"=>"9774e5f267", "url_l"=>"http://farm5.static.flickr.com/4116/4954328879_9774e5f267_b.jpg", "width_l"=>"768", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"768", "farm"=>5, "title"=>"Neah Bay Surfing", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"4954712091", "server"=>"4073", "secret"=>"46139a03fe", "url_l"=>"http://farm5.static.flickr.com/4073/4954712091_46139a03fe_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"1024", "farm"=>5, "title"=>"Hiking the Enchantments", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"5006826949", "server"=>"4092", "secret"=>"69cba75f52", "url_l"=>"http://farm5.static.flickr.com/4092/5006826949_69cba75f52_b.jpg", "width_l"=>"768", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"768", "farm"=>5, "title"=>"Glacier Nation Park", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"5052133602", "server"=>"4084", "secret"=>"38c7465284", "url_l"=>"http://farm5.static.flickr.com/4084/5052133602_38c7465284_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}, 
        {"height_l"=>"683", "farm"=>4, "title"=>"Hanging in Reno", "isprimary"=>"0", "pathalias"=>"benjaminsmith", "id"=>"5712730130", "server"=>"3159", "secret"=>"cab833c437", "url_l"=>"http://farm4.static.flickr.com/3159/5712730130_cab833c437_b.jpg", "width_l"=>"1024", "ownername"=>"benjamin.smith"}
      ]
    )
    
    FlickrPhoto.load_photoset_photos(flickr_photoset_id = ::PORTFOLIO_CONFIG['flickr_photoset_id'])
    
    FlickrPhoto.count.should == 21
  end
end
