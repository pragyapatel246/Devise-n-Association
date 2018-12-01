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

ActiveRecord::Schema.define(version: 2018_11_27_103422) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "show_id"
    t.integer "seat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "advance_booking"
    t.index ["seat_id"], name: "index_bookings_on_seat_id"
    t.index ["show_id"], name: "index_bookings_on_show_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "halls", force: :cascade do |t|
    t.string "hall_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "release_status"
  end

  create_table "seats", force: :cascade do |t|
    t.string "seat_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "show_id"
    t.boolean "booking_status", default: false
    t.index ["show_id"], name: "index_seats_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "show_time"
    t.integer "movie_id"
    t.integer "hall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hall_id"], name: "index_shows_on_hall_id"
    t.index ["movie_id"], name: "index_shows_on_movie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "subscription_status", default: false
    t.string "images", default: "--- []\n"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
