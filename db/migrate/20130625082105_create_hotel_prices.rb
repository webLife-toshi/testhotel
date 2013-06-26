class CreateHotelPrices < ActiveRecord::Migration
  def change
    create_table :hotel_prices do |t|

      t.timestamps
    end
    add_column :hotel_prices, :hotel_id, :integer
    add_column :hotel_prices, :price_id, :integer
    add_index  :hotel_prices, :hotel_id
    add_index  :hotel_prices, :price_id
  end
end
