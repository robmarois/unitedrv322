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

ActiveRecord::Schema.define(:version => 20120907203942) do

  create_table "attachments", :force => true do |t|
    t.text     "description"
    t.string   "file"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "brands", :force => true do |t|
    t.string   "brand_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "campers", :force => true do |t|
    t.string   "headline"
    t.integer  "price_now"
    t.integer  "year"
    t.string   "length"
    t.string   "ac_units"
    t.string   "slide"
    t.text     "features"
    t.integer  "brand_id"
    t.integer  "mileage"
    t.integer  "category_id"
    t.string   "stock_number"
    t.integer  "model_id"
    t.boolean  "is_new",        :default => false
    t.string   "weight"
    t.integer  "status_id"
    t.integer  "engine_id"
    t.integer  "attachment_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "permalink"
  end

  add_index "campers", ["brand_id"], :name => "index_campers_on_brand_id"
  add_index "campers", ["category_id"], :name => "index_campers_on_category_id"
  add_index "campers", ["permalink"], :name => "index_campers_on_permalink"

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "engines", :force => true do |t|
    t.string   "engine_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "prospects", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "comments"
    t.integer  "camper_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "question"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "searches", :force => true do |t|
    t.string   "keywords"
    t.integer  "brand_id"
    t.integer  "min_price_id"
    t.integer  "max_price_id"
    t.integer  "type_id"
    t.integer  "category_id"
    t.integer  "sort_by_id"
    t.boolean  "is_new",       :default => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "specials", :force => true do |t|
    t.integer  "camper_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subscribers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
