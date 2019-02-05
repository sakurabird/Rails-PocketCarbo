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

ActiveRecord::Schema.define(version: 2018_12_21_053026) do

  create_table "foods", force: :cascade do |t|
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
    t.index ["kind_id"], name: "index_foods_on_kind_id"
    t.index ["type_id"], name: "index_foods_on_type_id"
  end

  create_table "kinds", force: :cascade do |t|
    t.string "name", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "search_word", null: false
    t.index ["search_word"], name: "index_kinds_on_search_word"
    t.index ["type_id"], name: "index_kinds_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
