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

ActiveRecord::Schema.define(version: 20160323142800) do

  create_table "ethnic_origins", force: :cascade do |t|
    t.string   "origins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eyes", force: :cascade do |t|
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "gender"
  end

  create_table "hair_colors", force: :cascade do |t|
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hair_styles", force: :cascade do |t|
    t.string   "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "author_id"
    t.integer  "user_id"
    t.boolean  "has_read",   default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "silhouettes", force: :cascade do |t|
    t.string   "silhouette"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "birthday"
    t.string   "nickname"
    t.integer  "height"
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
    t.integer  "eye_id"
    t.integer  "hair_color_id"
    t.integer  "hair_style_id"
    t.integer  "gender_id"
    t.integer  "silhouette_id"
    t.integer  "ethnic_origins_id"
    t.datetime "last_ping_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["ethnic_origins_id"], name: "index_users_on_ethnic_origins_id"
  add_index "users", ["eye_id"], name: "index_users_on_eye_id"
  add_index "users", ["gender_id"], name: "index_users_on_gender_id"
  add_index "users", ["hair_color_id"], name: "index_users_on_hair_color_id"
  add_index "users", ["hair_style_id"], name: "index_users_on_hair_style_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["silhouette_id"], name: "index_users_on_silhouette_id"

end
