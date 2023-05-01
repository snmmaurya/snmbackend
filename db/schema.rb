# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_25_122100) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "app_configs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "key"
    t.jsonb "value", default: "{}"
    t.integer "status", limit: 2, default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_app_configs_on_key", unique: true
  end

  create_table "emails", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email"
    t.string "subject"
    t.integer "status", limit: 2, default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email", "subject"], name: "index_emails_on_email_and_subject"
  end

  create_table "otps", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "mobile_number"
    t.string "template"
    t.integer "reason", limit: 2, default: 0
    t.string "otp"
    t.integer "status", limit: 2, default: 0
    t.datetime "used_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mobile_number", "reason", "status"], name: "index_otps_on_mobile_number_and_reason_and_status"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "mobile_number", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "address", default: "", null: false
    t.integer "status", limit: 2, default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["mobile_number"], name: "index_users_on_mobile_number", unique: true
  end

end
