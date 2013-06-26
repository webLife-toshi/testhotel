class AddHotelIdToHotelFacilities < ActiveRecord::Migration
  def change
    add_column :hotel_facilities, :hotel_id, :integer
    add_column :hotel_facilities, :facility_id, :integer
    add_index  :hotel_facilities, :hotel_id
    add_index  :hotel_facilities, :facility_id
  end
end
