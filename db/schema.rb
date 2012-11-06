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

ActiveRecord::Schema.define(:version => 20121106225312) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "mobile_No"
    t.string   "address"
    t.integer  "post_code"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "password_digest"
  end

  add_index "clients", ["email"], :name => "index_clients_on_email", :unique => true

  create_table "houses", :force => true do |t|
    t.integer  "landlord_id"
    t.string   "location"
    t.string   "category"
    t.integer  "price"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "landlords", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "mobile_No"
    t.string   "location"
    t.integer  "national_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "landlords", ["email"], :name => "index_landlords_on_email", :unique => true

end