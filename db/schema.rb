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

ActiveRecord::Schema.define(version: 20170828151054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "popup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["popup_id"], name: "index_comments_on_popup_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "ordered_seats"
    t.integer "amount"
    t.boolean "is_donation"
    t.bigint "user_id"
    t.bigint "popup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["popup_id"], name: "index_orders_on_popup_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "popups", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "status"
    t.integer "funding_goal"
    t.integer "amount_pledged"
    t.date "deadline"
    t.integer "seats"
    t.string "category"
    t.string "address"
    t.text "description"
    t.integer "cost"
    t.date "launch_date"
    t.integer "price"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_popups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.datetime "token_expiry"
    t.boolean "is_admin", default: false, null: false
    t.boolean "is_chef", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "popups"
  add_foreign_key "comments", "users"
  add_foreign_key "orders", "popups"
  add_foreign_key "orders", "users"
  add_foreign_key "popups", "users"
end
