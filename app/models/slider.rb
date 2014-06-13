class Slider < ActiveRecord::Base

  has_attached_file :slider1, :styles => {
    :thumb_admin => "100X100>"
  }
  
end
