class LoadSchema < ActiveRecord::Migration

  def self.up
    create_table "authentications", :force => true do |t|
      t.integer  "user_id"
      t.string   "provider"
      t.string   "uid"
      t.string   "access_token"
      t.string   "access_token_secret"
      t.text     "info"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "companies", :force => true do |t|
      t.string   "name"
      t.string   "url"
      t.string   "twitter"
      t.text     "address"
      t.text     "description"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "logo_url"
      t.string   "logo_file_name"
      t.string   "logo_content_type"
      t.integer  "logo_file_size"
      t.datetime "logo_updated_at"
      t.boolean  "delta",             :default => true, :null => false
    end

    create_table "company_projects", :force => true do |t|
      t.integer  "company_id"
      t.integer  "project_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "employments", :force => true do |t|
      t.integer  "person_id"
      t.integer  "company_id"
      t.string   "title"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "group_memberships", :force => true do |t|
      t.integer  "group_id"
      t.integer  "person_id"
      t.string   "membership_type"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "group_projects", :force => true do |t|
      t.integer  "group_id"
      t.integer  "project_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "groups", :force => true do |t|
      t.string   "name"
      t.text     "description"
      t.string   "url"
      t.string   "mailing_list"
      t.string   "twitter"
      t.text     "meeting_info"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "logo_url"
      t.string   "logo_file_name"
      t.string   "logo_content_type"
      t.integer  "logo_file_size"
      t.datetime "logo_updated_at"
      t.boolean  "delta",             :default => true, :null => false
    end

    create_table "people", :force => true do |t|
      t.string   "email"
      t.string   "twitter"
      t.string   "url"
      t.text     "bio"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "user_id"
      t.string   "name"
      t.string   "imported_from_provider"
      t.string   "imported_from_id"
      t.string   "location"
      t.string   "photo_file_name"
      t.string   "photo_content_type"
      t.integer  "photo_file_size"
      t.datetime "photo_updated_at"
      t.boolean  "reviewed",                  :default => false
      t.string   "imported_from_screen_name"
      t.boolean  "delta",                     :default => true,  :null => false
    end

    create_table "project_memberships", :force => true do |t|
      t.integer  "person_id"
      t.integer  "project_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "projects", :force => true do |t|
      t.string   "name"
      t.string   "url"
      t.string   "twitter"
      t.text     "description"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "logo_file_name"
      t.string   "logo_content_type"
      t.integer  "logo_file_size"
      t.datetime "logo_updated_at"
      t.boolean  "delta",             :default => true, :null => false
    end

    create_table "resource_links", :force => true do |t|
      t.string   "name"
      t.string   "url"
      t.text     "description"
      t.string   "category"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.boolean  "delta",       :default => true, :null => false
    end

    create_table "sponsorships", :force => true do |t|
      t.integer  "group_id"
      t.integer  "company_id"
      t.string   "sponsorship_type"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "taggings", :force => true do |t|
      t.integer  "tag_id"
      t.integer  "taggable_id"
      t.string   "taggable_type"
      t.integer  "tagger_id"
      t.string   "tagger_type"
      t.string   "context"
      t.datetime "created_at"
    end

    add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
    add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

    create_table "tags", :force => true do |t|
      t.string "name"
    end

    create_table "users", :force => true do |t|
      t.string   "remember_token"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",       :default => 0
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.boolean  "admin",               :default => false
      t.string   "email"
    end

    create_table "versions", :force => true do |t|
      t.string   "item_type",  :null => false
      t.integer  "item_id",    :null => false
      t.string   "event",      :null => false
      t.string   "whodunnit"
      t.text     "object"
      t.datetime "created_at"
    end

    add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"
  end

end