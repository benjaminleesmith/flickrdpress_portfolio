module PortfolioHelper
  def photo_class(photo)
    if photo.width_l.to_i > photo.height_l.to_i
      "fat_photo"
    else
      "skinny_photo"
    end
  end
end