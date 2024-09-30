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

ActiveRecord::Schema[7.1].define(version: 2024_09_30_045814) do
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
    t.bigint "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "answers"
    t.index ["job_id"], name: "index_answers_on_job_id"
  end

  create_table "certification_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "photo5"
    t.string "photo6"
    t.string "photo7"
    t.string "photo8"
    t.string "photo"
    t.datetime "reserved"
    t.string "reserved_store"
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
    t.string "caption"
    t.index ["template_id"], name: "index_questions_on_template_id"
  end

  create_table "return_accessories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.bigint "return_id", null: false
    t.index ["return_id"], name: "index_return_accessories_on_return_id"
  end

  create_table "return_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "key"
    t.string "name"
    t.string "dbmm"
    t.string "fuel"
    t.string "hours"
    t.string "return_qty"
    t.bigint "return_id", null: false
    t.boolean "jerry"
    t.index ["return_id"], name: "index_return_items_on_return_id"
  end

  create_table "returns", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "opid"
    t.string "opnm"
    t.string "return_step"
    t.bigint "contract_id", null: false
    t.boolean "damage"
    t.text "damage_notes"
    t.string "damage_photo"
    t.boolean "taped"
    t.boolean "notes_attached"
    t.text "notes"
    t.index ["contract_id"], name: "index_returns_on_contract_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "header"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "photo_qty"
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
    t.string "store"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answers", "jobs"
  add_foreign_key "images", "templates"
  add_foreign_key "jobs", "templates"
  add_foreign_key "questions", "templates"
end
