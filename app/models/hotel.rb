class Hotel < ActiveRecord::Base
  attr_accessible :address_en, :address_th, :charged_wifi, :free_wifi, :hotel_id, :lat, :lng, :name_en, :name_ja, :name_ko, :name_th, :name_zh, :type, :facility_id, :area_id

has_many :hotel_facilities
has_many :facilities, :through => :hotel_facilities
has_many :hotel_areas
has_many :areas, :through => :hotel_areas
has_many :photos, :as => :photoable, :dependent =>:destroy
end
