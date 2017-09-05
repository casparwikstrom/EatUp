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

ActiveRecord::Schema.define(version: 20170904151340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "attachinary_files", id: :serial, force: :cascade do |t|
    t.string "attachinariable_type"
    t.integer "attachinariable_id"
    t.string "scope"
    t.string "public_id"
    t.string "version"
    t.integer "width"
    t.integer "height"
    t.string "format"
    t.string "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "ordered_seats"
    t.boolean "is_donation"
    t.bigint "user_id"
    t.bigint "popup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.integer "amount_cents"
    t.json "payment"
    t.index ["popup_id"], name: "index_orders_on_popup_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "popups", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "status", default: "pending"
    t.integer "funding_goal"
    t.integer "amount_pledged"
    t.date "deadline"
    t.integer "seat_capacity"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "price_cents", default: 0, null: false
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_popups_on_user_id"
  end

  create_table "popuptypes", force: :cascade do |t|
    t.bigint "type_id"
    t.bigint "popup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["popup_id"], name: "index_popuptypes_on_popup_id"
    t.index ["type_id"], name: "index_popuptypes_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "votes", id: :serial, force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

  create_table "wishlists", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "popup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["popup_id"], name: "index_wishlists_on_popup_id"
    t.index ["user_id"], name: "index_wishlists_on_user_id"
  end

  add_foreign_key "orders", "popups"
  add_foreign_key "orders", "users"
  add_foreign_key "popups", "users"
  add_foreign_key "popuptypes", "popups"
  add_foreign_key "popuptypes", "types"
  add_foreign_key "wishlists", "popups"
  add_foreign_key "wishlists", "users"
end
