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

ActiveRecord::Schema.define(version: 20180325031424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.date "founded_year"
    t.integer "employee_count"
    t.boolean "raised_money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "description"
    t.string "url"
    t.string "logo"
    t.string "status"
    t.string "address_street"
    t.string "address_city"
    t.string "address_state"
    t.string "address_zip"
    t.string "point_of_contact_name"
    t.string "point_of_contact_email"
    t.string "point_of_contact_phone"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "linked_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entity_categories", force: :cascade do |t|
    t.bigint "entity_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_entity_categories_on_category_id"
    t.index ["entity_id"], name: "index_entity_categories_on_entity_id"
  end

  create_table "entity_stages", force: :cascade do |t|
    t.bigint "entity_id"
    t.bigint "stage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_entity_stages_on_entity_id"
    t.index ["stage_id"], name: "index_entity_stages_on_stage_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "entity_categories", "categories"
  add_foreign_key "entity_categories", "entities"
  add_foreign_key "entity_stages", "entities"
  add_foreign_key "entity_stages", "stages"
end
