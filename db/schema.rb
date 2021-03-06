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

ActiveRecord::Schema.define(:version => 20140804110057) do

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gallery_images", :force => true do |t|
    t.string   "caption"
    t.string   "image_details"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "members", :force => true do |t|
    t.date     "dob"
    t.date     "joining_date"
    t.date     "curront_loction_joning_date"
    t.string   "email"
    t.string   "phones"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "is_deleted",                  :default => 0
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "notifications", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "notificationType"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "istextonly"
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.string   "designation"
    t.string   "current_workong_district"
    t.string   "current_working_location"
    t.string   "district"
    t.string   "city"
    t.string   "qualifications"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "member_id"
    t.string   "language"
    t.string   "current_post"
    t.string   "last_name"
    t.string   "father_name"
    t.string   "year_of_joining"
    t.string   "phone"
    t.string   "phone2"
    t.string   "year_of_posting"
    t.string   "native_district"
    t.string   "native_location"
    t.string   "other_info"
    t.date     "batch"
    t.string   "imeino"
    t.string   "education"
    t.date     "dob"
  end

  create_table "talukas", :force => true do |t|
    t.integer  "district_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",     :null => false
    t.string   "encrypted_password",     :default => "",     :null => false
    t.string   "role",                   :default => "User"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "approved",               :default => 0,      :null => false
    t.string   "authentication_token"
    t.string   "phone"
    t.string   "name"
    t.string   "mail"
    t.string   "imeino"
    t.string   "designation"
    t.string   "posting_district"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.integer  "member_id"
    t.string   "last_name"
    t.datetime "location_updation_time"
    t.string   "native_district"
    t.string   "posting_location"
    t.date     "batch"
    t.string   "year_of_posting"
    t.string   "present_post"
    t.string   "other_info"
    t.string   "education"
    t.string   "father_name"
    t.string   "native_location"
    t.string   "year_of_joining"
    t.string   "phone1"
    t.string   "phone2"
    t.integer  "notification_id"
    t.date     "dob"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "icard_file_name"
    t.string   "icard_content_type"
    t.integer  "icard_file_size"
    t.datetime "icard_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
