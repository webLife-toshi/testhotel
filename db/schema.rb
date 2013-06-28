# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130628092327) do

  create_table "administrators", :force => true do |t|
    t.string   "admin_name"
    t.string   "admin_email"
    t.string   "admin_password_hash"
    t.string   "admin_password_salt"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "admin_remember_token"
  end

  add_index "administrators", ["admin_remember_token"], :name => "index_administrators_on_admin_remember_token"

  create_table "areas", :force => true do |t|
    t.string   "area"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "district"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "areas", ["area"], :name => "index_areas_on_area"
  add_index "areas", ["city"], :name => "index_areas_on_city"
  add_index "areas", ["country"], :name => "index_areas_on_country"
  add_index "areas", ["district"], :name => "index_areas_on_district"
  add_index "areas", ["state"], :name => "index_areas_on_state"

  create_table "facilities", :force => true do |t|
    t.boolean  "roomservice"
    t.boolean  "familyroom"
    t.boolean  "restaurant"
    t.boolean  "nightclub"
    t.boolean  "tours"
    t.boolean  "wifipublicareas"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "facilities", ["familyroom"], :name => "index_facilities_on_familyroom"
  add_index "facilities", ["nightclub"], :name => "index_facilities_on_nightclub"
  add_index "facilities", ["restaurant"], :name => "index_facilities_on_restaurant"
  add_index "facilities", ["roomservice"], :name => "index_facilities_on_roomservice"
  add_index "facilities", ["tours"], :name => "index_facilities_on_tours"
  add_index "facilities", ["wifipublicareas"], :name => "index_facilities_on_wifipublicareas"

  create_table "hotel_areas", :force => true do |t|
    t.integer  "hotel_id"
    t.integer  "area_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "hotel_areas", ["area_id"], :name => "index_hotel_areas_on_area_id"
  add_index "hotel_areas", ["hotel_id"], :name => "index_hotel_areas_on_hotel_id"

  create_table "hotel_facilities", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "hotel_id"
    t.integer  "facility_id"
  end

  add_index "hotel_facilities", ["facility_id"], :name => "index_hotel_facilities_on_facility_id"
  add_index "hotel_facilities", ["hotel_id"], :name => "index_hotel_facilities_on_hotel_id"

  create_table "hotel_prices", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "hotel_id"
    t.integer  "price_id"
  end

  add_index "hotel_prices", ["hotel_id"], :name => "index_hotel_prices_on_hotel_id"
  add_index "hotel_prices", ["price_id"], :name => "index_hotel_prices_on_price_id"

  create_table "hotels", :force => true do |t|
    t.integer  "hotel_id"
    t.string   "name_en"
    t.string   "name_th"
    t.string   "name_ja"
    t.string   "name_zh"
    t.string   "name_ko"
    t.string   "hotel_type"
    t.string   "address_en"
    t.string   "address_th"
    t.string   "lat"
    t.string   "lng"
    t.boolean  "free_wifi"
    t.boolean  "charged_wifi"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "hotels", ["address_en"], :name => "index_hotels_on_address_en"
  add_index "hotels", ["address_th"], :name => "index_hotels_on_address_th"
  add_index "hotels", ["charged_wifi"], :name => "index_hotels_on_charged_wifi"
  add_index "hotels", ["free_wifi"], :name => "index_hotels_on_free_wifi"
  add_index "hotels", ["hotel_id"], :name => "index_hotels_on_hotel_id"
  add_index "hotels", ["hotel_type"], :name => "index_hotels_on_hotel_type"
  add_index "hotels", ["lat"], :name => "index_hotels_on_lat"
  add_index "hotels", ["lng"], :name => "index_hotels_on_lng"
  add_index "hotels", ["name_en"], :name => "index_hotels_on_name_en"
  add_index "hotels", ["name_ja"], :name => "index_hotels_on_name_ja"
  add_index "hotels", ["name_ko"], :name => "index_hotels_on_name_ko"
  add_index "hotels", ["name_th"], :name => "index_hotels_on_name_th"
  add_index "hotels", ["name_zh"], :name => "index_hotels_on_name_zh"

  create_table "photos", :force => true do |t|
    t.integer  "photoable_id"
    t.string   "photoable_type"
    t.string   "image"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "prices", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "price_usd"
    t.integer  "price_thb"
    t.integer  "price_jpy"
    t.integer  "price_cny"
    t.integer  "price_krw"
  end

  add_index "prices", ["price_cny"], :name => "index_prices_on_price_cny"
  add_index "prices", ["price_jpy"], :name => "index_prices_on_price_jpy"
  add_index "prices", ["price_krw"], :name => "index_prices_on_price_krw"
  add_index "prices", ["price_thb"], :name => "index_prices_on_price_thb"
  add_index "prices", ["price_usd"], :name => "index_prices_on_price_usd"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "remember_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
