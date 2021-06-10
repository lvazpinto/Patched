# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_10_154115) do

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

  create_table "instructions", force: :cascade do |t|
    t.bigint "vegetable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "harvesting_instructions_step_one"
    t.text "harvesting_instructions_step_two"
    t.text "harvesting_instructions_step_three"
    t.text "harvesting_instructions_step_four"
    t.text "planting_instructions_step_one"
    t.text "planting_instructions_step_two"
    t.text "planting_instructions_step_three"
    t.text "planting_instructions_step_four"
    t.index ["vegetable_id"], name: "index_instructions_on_vegetable_id"
  end

  create_table "patch_vegetables", force: :cascade do |t|
    t.date "planting_date"
    t.bigint "vegetable_id", null: false
    t.bigint "patch_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status", default: "planted"
    t.index ["patch_id"], name: "index_patch_vegetables_on_patch_id"
    t.index ["vegetable_id"], name: "index_patch_vegetables_on_vegetable_id"
  end

  create_table "patches", force: :cascade do |t|
    t.string "patch_area", default: "20"
    t.integer "hours_of_sun"
    t.string "location", default: "Lisboa, Portugal"
    t.string "status", default: "empty"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_patches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vegetables", force: :cascade do |t|
    t.string "name"
    t.integer "growing_length"
    t.integer "vegetable_area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sun_score"
    t.string "planting_season"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "instructions", "vegetables"
  add_foreign_key "patch_vegetables", "patches"
  add_foreign_key "patch_vegetables", "vegetables"
  add_foreign_key "patches", "users"
end
