class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.integer :hotel_id
      t.string :name_en
      t.string :name_th
      t.string :name_ja
      t.string :name_zh
      t.string :name_ko
      t.string :hotel_type
      t.string :address_en
      t.string :address_th
      t.string :lat
      t.string :lng
      t.boolean :free_wifi
      t.boolean :charged_wifi

      t.timestamps
    end
  end
end
