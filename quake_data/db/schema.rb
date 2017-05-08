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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170401153806) do

  create_table "cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.float    "latitude",            limit: 24
    t.float    "longitude",           limit: 24
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.float    "northeast_latitude",  limit: 24
    t.float    "northeast_longitude", limit: 24
    t.float    "southwest_latitude",  limit: 24
    t.float    "southwest_longitude", limit: 24
  end

  create_table "distances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "quakes_id"
    t.integer  "cities_id"
    t.float    "distance",   limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["cities_id"], name: "index_distances_on_cities_id", using: :btree
    t.index ["quakes_id"], name: "index_distances_on_quakes_id", using: :btree
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quakes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "date"
    t.float    "power",      limit: 24
    t.integer  "city_id"
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.time     "time"
  end

  create_table "recordings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "location_id"
    t.float    "power",       limit: 24
    t.date     "time"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["location_id"], name: "index_recordings_on_location_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "distances", "cities", column: "cities_id"
  add_foreign_key "distances", "quakes", column: "quakes_id"
  add_foreign_key "recordings", "locations"
end
