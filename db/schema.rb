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

ActiveRecord::Schema.define(version: 2020_03_10_121648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gardens", force: :cascade do |t|
    t.string "title"
    t.integer "width"
    t.integer "height"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gardens_on_user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.bigint "garden_id"
    t.bigint "vegetable_id"
    t.date "planting_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_plants_on_garden_id"
    t.index ["vegetable_id"], name: "index_plants_on_vegetable_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "status"
    t.bigint "vegetable1_id"
    t.bigint "vegetable2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vegetable1_id"], name: "index_relationships_on_vegetable1_id"
    t.index ["vegetable2_id"], name: "index_relationships_on_vegetable2_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "avatar"
    t.string "first_name"
    t.string "last_name"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vegetables", force: :cascade do |t|
    t.string "specie"
    t.date "seeding_start"
    t.date "seeding_end"
    t.string "seed_description"
    t.date "planting_start"
    t.date "planting_end"
    t.string "plant_description"
    t.date "harvest_start"
    t.date "harvest_end"
    t.string "harvest_description"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  add_foreign_key "gardens", "users"
  add_foreign_key "plants", "gardens"
  add_foreign_key "plants", "vegetables"
  add_foreign_key "relationships", "vegetables", column: "vegetable1_id"
  add_foreign_key "relationships", "vegetables", column: "vegetable2_id"
end
