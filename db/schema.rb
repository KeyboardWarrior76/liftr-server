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

ActiveRecord::Schema.define(version: 2019_07_28_191841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "main_bodypart"
  end

  create_table "rep_schemes", force: :cascade do |t|
    t.bigint "exercise_id"
    t.bigint "training_date_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "exercise_name"
    t.string "exercise_kind"
    t.index ["exercise_id"], name: "index_rep_schemes_on_exercise_id"
    t.index ["training_date_id"], name: "index_rep_schemes_on_training_date_id"
  end

  create_table "training_dates", force: :cascade do |t|
    t.bigint "user_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_training_dates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "work_sets", force: :cascade do |t|
    t.integer "reps"
    t.integer "weight"
    t.float "rpe"
    t.bigint "rep_scheme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "distance"
    t.string "distance_unit"
    t.integer "hours"
    t.integer "minutes"
    t.integer "seconds"
    t.index ["rep_scheme_id"], name: "index_work_sets_on_rep_scheme_id"
  end

  add_foreign_key "rep_schemes", "exercises"
  add_foreign_key "rep_schemes", "training_dates"
  add_foreign_key "training_dates", "users"
  add_foreign_key "work_sets", "rep_schemes"
end
