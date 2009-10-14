module PortfolioHelper
  def photo_width(photo)
    if photo.width_l.to_i > photo.height_l.to_i
      500
    else
      ((500.0/photo.height_l.to_f) * photo.width_l.to_i).to_i
    end
  end

  def photo_height(photo)
    if photo.width_l.to_i > photo.height_l.to_i
      ((500.0/photo.width_l.to_f) * photo.height_l.to_i).to_i
    else
      500
    end
  end
end