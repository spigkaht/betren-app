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

ActiveRecord::Schema[7.1].define(version: 2024_09_09_100620) do
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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "answers", force: :cascade do |t|
    t.string "content"
    t.bigint "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_answers_on_job_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "header"
    t.bigint "template_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["template_id"], name: "index_images_on_template_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "item_num", null: false
    t.datetime "completed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_return"
    t.string "last_contract"
    t.string "store"
    t.bigint "template_id"
    t.string "photo1"
    t.string "photo2"
    t.string "photo3"
    t.string "photo4"
    t.string "header"
    t.string "part_num"
    t.string "opid"
    t.string "opnm"
    t.boolean "fuel_req"
    t.float "fuel"
    t.float "hours"
    t.jsonb "bool_fields", default: {}
    t.jsonb "accessory_fields", default: {}
    t.index ["item_num"], name: "index_jobs_on_item_num"
    t.index ["template_id"], name: "index_jobs_on_template_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.bigint "template_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "qtype"
    t.boolean "answer_bool"
    t.string "answer_text"
    t.float "answer_num"
    t.integer "order"
    t.index ["template_id"], name: "index_questions_on_template_id"
  end

  create_table "returns", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string "header"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answers", "jobs"
  add_foreign_key "images", "templates"
  add_foreign_key "jobs", "templates"
  add_foreign_key "questions", "templates"
end
