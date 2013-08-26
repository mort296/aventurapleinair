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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130823014218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "activities", force: true do |t|
    t.string   "name"
    t.string   "federation"
    t.string   "website"
    t.string   "interesting_stats"
    t.string   "history"
    t.string   "particularity"
    t.string   "description"
    t.string   "other_infos"
    t.string   "learn"
    t.string   "equipment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "season_id"
    t.integer  "activity_category_id"
    t.string   "video_link"
    t.boolean  "online"
    t.integer  "pub_id"
  end

  create_table "activities_events", force: true do |t|
    t.integer "activity_id"
    t.integer "event_id"
  end

  create_table "activities_locations", force: true do |t|
    t.integer "activity_id"
    t.integer "location_id"
  end

  create_table "activity_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "administrative_regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.date     "date_start"
    t.date     "date_end"
    t.string   "website"
    t.string   "federation"
    t.string   "federation_website"
    t.string   "interesting_stats"
    t.string   "history"
    t.string   "description"
    t.string   "other_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "season_id"
    t.string   "name"
    t.boolean  "online"
    t.integer  "location_id"
  end

  create_table "homes", force: true do |t|
    t.string   "header_image"
    t.string   "background_image"
    t.string   "about_us"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.string   "url"
    t.integer  "linkable_id"
    t.string   "linkable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "charge_free_phone"
    t.string   "website"
    t.string   "gps_coord"
    t.decimal  "ranking"
    t.integer  "ranking_amount"
    t.string   "services"
    t.string   "intoduction"
    t.string   "interesting_stats"
    t.string   "other_info"
    t.string   "prizes"
    t.string   "other_distinctions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "administrative_region_id"
    t.boolean  "online"
    t.integer  "pub_id"
  end

  create_table "ratings", force: true do |t|
    t.integer "ratable_id"
    t.string  "ratable_type"
    t.decimal "rate",         default: 0.0
    t.integer "rater_amount", default: 0
  end

  create_table "seasons", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "top_10", force: true do |t|
    t.string "text_top"
    t.string "text_bottom"
  end

  create_table "useful_links", force: true do |t|
    t.integer  "location_id"
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
