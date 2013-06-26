class Area < ActiveRecord::Base
  attr_accessible :area, :city, :country, :district, :state,:hotel_id

  has_many :hotel_areas
  has_many :hotel, :through => :hotel_areas
end
