class AddIndexToAreas < ActiveRecord::Migration
  def change
    add_index :areas, :area
    add_index :areas, :country
    add_index :areas, :state
    add_index :areas, :city
    add_index :areas, :district
  end
end
