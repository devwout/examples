# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091227124850) do

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
  end

  add_index "comments", ["author_id"], :name => "author_id"
  add_index "comments", ["post_id"], :name => "post_id"

  create_table "people", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.text     "body"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["author_id"], :name => "author_id"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true
  add_index "users", ["person_id"], :name => "index_users_on_person_id", :unique => true

  add_foreign_key "comments", ["post_id"], "posts", ["id"], :name => "comments_ibfk_2"
  add_foreign_key "comments", ["author_id"], "people", ["id"], :name => "comments_ibfk_1"

  add_foreign_key "posts", ["author_id"], "people", ["id"], :name => "posts_ibfk_1"

  add_foreign_key "users", ["person_id"], "people", ["id"], :name => "users_ibfk_1"

end
