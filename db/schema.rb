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

ActiveRecord::Schema.define(version: 20170503160154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.integer  "speakers_2011"
    t.integer  "speakers_2006"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "user_languages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["language_id"], name: "index_user_languages_on_language_id", using: :btree
    t.index ["user_id"], name: "index_user_languages_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "sex"
    t.string   "address_number"
    t.string   "address_street"
    t.string   "address_unit"
    t.string   "address_city"
    t.string   "address_province"
    t.string   "address_postal_code"
    t.boolean  "address_verified",       default: false
    t.boolean  "phone_verified",         default: false
    t.boolean  "email_verified",         default: false
    t.boolean  "verified",               default: false
    t.string   "main_identification"
    t.string   "support_identification"
    t.date     "birthday"
    t.string   "password_digest"
    t.boolean  "password_not_set",       default: false
    t.string   "aasm_state"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "stage",                  default: 0
  end

  add_foreign_key "user_languages", "languages"
  add_foreign_key "user_languages", "users"
end
