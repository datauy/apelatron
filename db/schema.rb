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

ActiveRecord::Schema.define(version: 2023_04_02_015001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "complaints", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "follow_number"
    t.bigint "platform_id", null: false
    t.bigint "copyright_id"
    t.bigint "standard_id"
    t.bigint "country_id", null: false
    t.text "description"
    t.string "video"
    t.bigint "limitations_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["copyright_id"], name: "index_complaints_on_copyright_id"
    t.index ["country_id"], name: "index_complaints_on_country_id"
    t.index ["limitations_id"], name: "index_complaints_on_limitations_id"
    t.index ["platform_id"], name: "index_complaints_on_platform_id"
    t.index ["standard_id"], name: "index_complaints_on_standard_id"
  end

  create_table "copyrights", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "limitations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plataforms", force: :cascade do |t|
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

  create_table "standards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "complaints", "copyrights"
  add_foreign_key "complaints", "countries"
  add_foreign_key "complaints", "limitations", column: "limitations_id"
  add_foreign_key "complaints", "platforms"
  add_foreign_key "complaints", "standards"
end
