class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.boolean :roomservice
      t.boolean :familyroom
      t.boolean :restaurant
      t.boolean :nightclub
      t.boolean :tours
      t.boolean :wifipublicareas

      t.timestamps
    end
    add_index :facilities, :roomservice
    add_index :facilities, :familyroom
    add_index :facilities, :restaurant
    add_index :facilities, :nightclub
    add_index :facilities, :tours
    add_index :facilities, :wifipublicareas
  end
end
