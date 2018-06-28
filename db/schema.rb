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

ActiveRecord::Schema.define(version: 2018_06_28_052434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "interview_videos", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_interview_videos_on_user_id"
  end

  create_table "languages", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "speakers_2011"
    t.integer "speakers_2006"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", id: :serial, force: :cascade do |t|
    t.string "phone"
    t.string "email"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_id_photos", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_main_id_photos_on_user_id"
  end

  create_table "serious_photos", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_serious_photos_on_user_id"
  end

  create_table "silly_photos", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_silly_photos_on_user_id"
  end

  create_table "supporting_ids", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_supporting_ids_on_user_id"
  end

  create_table "user_languages", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_user_languages_on_language_id"
    t.index ["user_id"], name: "index_user_languages_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "gender"
    t.date "birthdate"
    t.string "favourite_color"
    t.string "address_number"
    t.string "address_street"
    t.string "address_unit"
    t.string "address_city"
    t.string "address_province"
    t.string "address_postal_code"
    t.string "address_verification_code"
    t.datetime "address_verification_sent"
    t.datetime "address_verified"
    t.string "phone_verifiation_code"
    t.datetime "phone_verification_sent"
    t.datetime "phone_verified"
    t.string "email_verification_code"
    t.datetime "email_verification_sent"
    t.datetime "email_verified"
    t.datetime "user_verified"
    t.string "main_id"
    t.string "serious_photo"
    t.string "silly_photo"
    t.string "support_id"
    t.string "intro_video"
    t.string "password_digest"
    t.boolean "canadian_citizen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "interview_videos", "users"
  add_foreign_key "main_id_photos", "users"
  add_foreign_key "serious_photos", "users"
  add_foreign_key "silly_photos", "users"
  add_foreign_key "supporting_ids", "users"
  add_foreign_key "user_languages", "languages"
  add_foreign_key "user_languages", "users"
end
