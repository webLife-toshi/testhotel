class HotelArea < ActiveRecord::Base
  attr_accessible :area_id, :hotel_id

  belongs_to :hotel
  belongs_to :area
end
