class RemoveHotelIdFromHotelFacilities < ActiveRecord::Migration
  def up
    remove_column :hotel_facilities, :hotel_ids
    remove_column :hotel_facilities, :facility_ids
  end

  def down
    add_column :hotel_facilities, :hotel_ids, :integer
    add_column :hotel_facilities, :facility_ids, :integer
    add_index  :hotel_facilities, :hotel_ids
    add_index  :hotel_facilities, :facility_ids
  end
end
