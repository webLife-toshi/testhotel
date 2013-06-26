class CreateHotelAreas < ActiveRecord::Migration
  def change
    create_table :hotel_areas do |t|
      t.integer :hotel_id
      t.integer :area_id

      t.timestamps
    end
    add_index :hotel_areas, :hotel_id
    add_index :hotel_areas, :area_id
  end
end
