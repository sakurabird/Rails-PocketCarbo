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

ActiveRecord::Schema.define(version: 2019_11_26_111645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.float "carbohydrate_per_100g", null: false
    t.float "carbohydrate_per_weight", null: false
    t.integer "weight", null: false
    t.float "calory", null: false
    t.float "protein", null: false
    t.float "fat", null: false
    t.float "sodium", null: false
    t.integer "type_id", null: false
    t.integer "kind_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "search_word", null: false
    t.boolean "deleted_flg", null: false
    t.string "weight_hint"
    t.string "notes"
    t.float "fat_per100g", null: false
    t.index ["kind_id"], name: "index_foods_on_kind_id"
    t.index ["type_id"], name: "index_foods_on_type_id"
  end

  create_table "kinds", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "search_word", null: false
    t.index ["search_word"], name: "index_kinds_on_search_word"
    t.index ["type_id"], name: "index_kinds_on_type_id"
  end

  create_table "types", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "foods", "kinds"
  add_foreign_key "foods", "types"
  add_foreign_key "kinds", "types"
end
