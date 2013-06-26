class CreateHotelFacilities < ActiveRecord::Migration
  def change
    create_table :hotel_facilities do |t|

      t.timestamps
    end
    add_column :hotel_facilities, :hotel_ids, :integer
    add_column :hotel_facilities, :facility_ids, :integer
    add_index  :hotel_facilities, :hotel_ids
    add_index  :hotel_facilities, :facility_ids
  end
end
