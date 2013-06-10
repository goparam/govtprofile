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

ActiveRecord::Schema.define(:version => 20130610070226) do

  create_table "members", :force => true do |t|
    t.date     "dob"
    t.string   "photo"
    t.date     "joining_date"
    t.date     "curront_loction_joning_date"
    t.string   "email"
    t.string   "phones"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.boolean  "is_deleted",                  :default => false
  end

  create_table "phones", :force => true do |t|
    t.string   "phone_no"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "member_id"
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.string   "designation"
    t.string   "current_workong_district"
    t.string   "current_working_location"
    t.string   "district"
    t.string   "city"
    t.string   "qualifications"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "member_id"
    t.string   "language"
    t.string   "current_post_file_name"
    t.string   "current_post_content_type"
    t.integer  "current_post_file_size"
    t.datetime "current_post_updated_at"
    t.string   "current_post"
  end

  create_table "qualifications", :force => true do |t|
    t.string   "qualification"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "member_id"
  end

  create_table "updates", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
