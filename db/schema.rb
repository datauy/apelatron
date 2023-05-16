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

ActiveRecord::Schema.define(version: 2023_05_16_011852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "complaint_relations", force: :cascade do |t|
    t.bigint "complaint_id", null: false
    t.bigint "standard_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["complaint_id"], name: "index_complaint_relations_on_complaint_id"
    t.index ["standard_id"], name: "index_complaint_relations_on_standard_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "follow_number"
    t.bigint "platform_id", null: false
    t.bigint "standard_id"
    t.bigint "country_id", null: false
    t.text "description"
    t.string "video"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "reason"
    t.string "token"
    t.bigint "reason_id", null: false
    t.index ["country_id"], name: "index_complaints_on_country_id"
    t.index ["platform_id"], name: "index_complaints_on_platform_id"
    t.index ["reason_id"], name: "index_complaints_on_reason_id"
    t.index ["standard_id"], name: "index_complaints_on_standard_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reasons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "standards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "step_relations", force: :cascade do |t|
    t.bigint "step_id", null: false
    t.bigint "standard_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["standard_id"], name: "index_step_relations_on_standard_id"
    t.index ["step_id"], name: "index_step_relations_on_step_id"
  end

  create_table "steps", force: :cascade do |t|
    t.bigint "platform_id", null: false
    t.integer "order"
    t.integer "step_number"
    t.string "title"
    t.text "description"
    t.text "template"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "reason_id", null: false
    t.index ["platform_id"], name: "index_steps_on_platform_id"
    t.index ["reason_id"], name: "index_steps_on_reason_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "complaint_relations", "complaints"
  add_foreign_key "complaint_relations", "standards"
  add_foreign_key "complaints", "countries"
  add_foreign_key "complaints", "platforms"
  add_foreign_key "complaints", "reasons"
  add_foreign_key "complaints", "standards"
  add_foreign_key "step_relations", "standards"
  add_foreign_key "step_relations", "steps"
  add_foreign_key "steps", "platforms"
  add_foreign_key "steps", "reasons"
end
