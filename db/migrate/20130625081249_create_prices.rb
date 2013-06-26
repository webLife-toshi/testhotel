class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|

      t.timestamps
    end
    add_column :prices, :price_usd, :integer
    add_column :prices, :price_thb, :integer
    add_column :prices, :price_jpy, :integer
    add_column :prices, :price_cny, :integer
    add_column :prices, :price_krw, :integer
    add_index  :prices, :price_usd
    add_index  :prices, :price_thb
    add_index  :prices, :price_jpy
    add_index  :prices, :price_cny
    add_index  :prices, :price_krw
  end
end
