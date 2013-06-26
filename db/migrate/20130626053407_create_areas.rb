class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :area
      t.string :country
      t.string :state
      t.string :city
      t.string :district

      t.timestamps
    end
     add_index :areas, :area
     add_index :areas, :country
     add_index :areas, :state
     add_index :areas, :city
     add_index :areas, :district
  end
end
