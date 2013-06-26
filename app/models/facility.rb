class Facility < ActiveRecord::Base
  attr_accessible :familyroom, :nightclub, :restaurant, :roomservice, :tours, :wifipublicareas, :hotel_id

  has_many :hotel_facilities
  has_many :hotels, :through => :hotel_facilities
end
