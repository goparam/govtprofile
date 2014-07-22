class Addcolumntophonebookuser < ActiveRecord::Migration
 def change

  	create_table :phonebookusers, :force => true do |t|
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
  end

end
end