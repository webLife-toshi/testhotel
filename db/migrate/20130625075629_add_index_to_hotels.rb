class AddIndexToHotels < ActiveRecord::Migration
  def change
   add_index :hotels, :hotel_id
   add_index :hotels, :name_en
   add_index :hotels, :name_th
   add_index :hotels, :name_ja
   add_index :hotels, :name_zh
   add_index :hotels, :name_ko
   add_index :hotels, :hotel_type
   add_index :hotels, :address_en
   add_index :hotels, :address_th
   add_index :hotels, :lat
   add_index :hotels, :lng
   add_index :hotels, :free_wifi
   add_index :hotels, :charged_wifi
  end
end
