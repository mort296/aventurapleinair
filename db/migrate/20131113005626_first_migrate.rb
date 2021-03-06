class FirstMigrate < ActiveRecord::Migration
  def change
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
	    t.text     "particularity"
	    t.text     "description"
	    t.text     "other_infos"
	    t.text     "learn"
	    t.text     "equipment"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.integer  "season_id"
	    t.integer  "activity_category_id"
	    t.string   "video_link"
	    t.boolean  "online"
	    t.integer  "pub_id"
	    t.string   "image"
	    t.text     "useful_links"
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

	  create_table "activity_category_translations", force: true do |t|
	    t.integer  "activity_category_id", null: false
	    t.string   "locale",               null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "name"
	  end

	  add_index "activity_category_translations", ["activity_category_id"], name: "index_activity_category_translations_on_activity_category_id", using: :btree
	  add_index "activity_category_translations", ["locale"], name: "index_activity_category_translations_on_locale", using: :btree

	  create_table "activity_translations", force: true do |t|
	    t.integer  "activity_id",   null: false
	    t.string   "locale",        null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "name"
	    t.string   "federation"
	    t.text     "particularity"
	    t.text     "description"
	    t.text     "other_infos"
	    t.text     "learn"
	    t.text     "equipment"
	    t.text     "useful_links"
	    t.string   "video_link"
	  end

	  add_index "activity_translations", ["activity_id"], name: "index_activity_translations_on_activity_id", using: :btree
	  add_index "activity_translations", ["locale"], name: "index_activity_translations_on_locale", using: :btree

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

	  create_table "event_translations", force: true do |t|
	    t.integer  "event_id",          null: false
	    t.string   "locale",            null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "website"
	    t.string   "federation"
	    t.text     "interesting_stats"
	    t.text     "description"
	    t.string   "name"
	    t.text     "other_infos"
	  end

	  add_index "event_translations", ["event_id"], name: "index_event_translations_on_event_id", using: :btree
	  add_index "event_translations", ["locale"], name: "index_event_translations_on_locale", using: :btree

	  create_table "events", force: true do |t|
	    t.date     "date_start"
	    t.date     "date_end"
	    t.string   "website"
	    t.string   "federation"
	    t.string   "federation_website"
	    t.text     "interesting_stats"
	    t.text     "description"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.integer  "season_id"
	    t.string   "name"
	    t.boolean  "online"
	    t.integer  "location_id"
	    t.text     "other_infos"
	    t.string   "image"
	    t.string   "link"
	  end

	  create_table "footer_text_translations", force: true do |t|
	    t.integer  "footer_text_id",      null: false
	    t.string   "locale",              null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "max_title"
	    t.string   "max_subtitle"
	    t.text     "max_text"
	    t.string   "photograph_title"
	    t.string   "photograph_subtitle"
	    t.text     "photograph_text"
	  end

	  add_index "footer_text_translations", ["footer_text_id"], name: "index_footer_text_translations_on_footer_text_id", using: :btree
	  add_index "footer_text_translations", ["locale"], name: "index_footer_text_translations_on_locale", using: :btree

	  create_table "footer_texts", force: true do |t|
	    t.string   "max_title"
	    t.string   "max_subtitle"
	    t.text     "max_text"
	    t.string   "max_image"
	    t.string   "photograph_title"
	    t.string   "photograph_subtitle"
	    t.text     "photograph_text"
	    t.string   "photograph_image"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	  end

	  create_table "home_translations", force: true do |t|
	    t.integer  "home_id",                   null: false
	    t.string   "locale",                    null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "title"
	    t.string   "who_one_title"
	    t.text     "who_one_text"
	    t.string   "who_two_title"
	    t.text     "who_two_text"
	    t.string   "who_video_link"
	    t.string   "featured_caption_place"
	    t.string   "featured_caption_activity"
	    t.string   "promotion_text"
	  end

	  add_index "home_translations", ["home_id"], name: "index_home_translations_on_home_id", using: :btree
	  add_index "home_translations", ["locale"], name: "index_home_translations_on_locale", using: :btree

	  create_table "homes", force: true do |t|
	    t.string   "background_image"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "title"
	    t.string   "who_one_title"
	    t.text     "who_one_text"
	    t.string   "who_two_title"
	    t.text     "who_two_text"
	    t.string   "who_video_link"
	    t.string   "featured_image"
	    t.string   "featured_caption_place"
	    t.string   "featured_caption_activity"
	    t.string   "promotion_text"
	    t.integer  "pub1_id"
	    t.integer  "pub2_id"
	  end

	  create_table "location_translations", force: true do |t|
	    t.integer  "location_id",        null: false
	    t.string   "locale",             null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "name"
	    t.string   "address"
	    t.string   "website"
	    t.text     "services"
	    t.text     "interesting_stats"
	    t.text     "prizes"
	    t.text     "other_distinctions"
	    t.text     "introduction"
	    t.text     "other_infos"
	  end

	  add_index "location_translations", ["locale"], name: "index_location_translations_on_locale", using: :btree
	  add_index "location_translations", ["location_id"], name: "index_location_translations_on_location_id", using: :btree

	  create_table "locations", force: true do |t|
	    t.string   "name"
	    t.string   "address"
	    t.string   "phone"
	    t.string   "charge_free_phone"
	    t.string   "website"
	    t.decimal  "ranking"
	    t.integer  "ranking_amount"
	    t.text     "services"
	    t.text     "interesting_stats"
	    t.text     "prizes"
	    t.text     "other_distinctions"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.integer  "administrative_region_id"
	    t.boolean  "online"
	    t.integer  "pub_id"
	    t.text     "introduction"
	    t.text     "other_infos"
	    t.string   "image"
	    t.string   "link"
	    t.decimal  "gps_longitude"
	    t.decimal  "gps_latitude"
	  end

	  create_table "locations_useful_infos", force: true do |t|
	    t.integer "location_id"
	    t.integer "useful_info_id"
	  end

	  create_table "pub_types", force: true do |t|
	    t.string   "name"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	  end

	  create_table "pubs", force: true do |t|
	    t.string   "image"
	    t.integer  "pub_type_id"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "name"
	  end

	  create_table "ratings", force: true do |t|
	    t.integer "ratable_id"
	    t.string  "ratable_type"
	    t.decimal "rate",         default: 0.0
	    t.integer "rater_amount", default: 0
	  end

	  create_table "season_translations", force: true do |t|
	    t.integer  "season_id",  null: false
	    t.string   "locale",     null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "name"
	  end

	  add_index "season_translations", ["locale"], name: "index_season_translations_on_locale", using: :btree
	  add_index "season_translations", ["season_id"], name: "index_season_translations_on_season_id", using: :btree

	  create_table "seasons", force: true do |t|
	    t.string   "name"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	  end

	  create_table "top_10", force: true do |t|
	    t.text "text_top"
	    t.text "text_bottom"
	  end

	  create_table "useful_infos", force: true do |t|
	    t.string   "name"
	    t.string   "icon"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	  end
	  user = AdminUser.create!( :email => 'cloutier_16@hotmail.com', :password => 'password', :password_confirmation => 'password' )
	  user.save
	  home = Home.create!()
	  home.save
	  footer = FooterText.create!()
	  footer.save
  end
end
