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

ActiveRecord::Schema[7.1].define(version: 2024_08_29_040935) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.index ["template_id"], name: "index_questions_on_template_id"
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

  add_foreign_key "answers", "jobs"
  add_foreign_key "images", "templates"
  add_foreign_key "jobs", "templates"
  add_foreign_key "questions", "templates"
end
