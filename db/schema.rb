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

ActiveRecord::Schema.define(version: 2020_03_17_094709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "garden_vegetables", force: :cascade do |t|
    t.bigint "garden_id"
    t.bigint "vegetable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "position"
    t.index ["garden_id"], name: "index_garden_vegetables_on_garden_id"
    t.index ["vegetable_id"], name: "index_garden_vegetables_on_vegetable_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.string "title"
    t.integer "width"
    t.integer "height"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gardens_on_user_id"
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

  create_table "tasks", force: :cascade do |t|
    t.bigint "garden_vegetable_id"
    t.integer "step"
    t.string "action"
    t.date "date"
    t.boolean "done", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_vegetable_id"], name: "index_tasks_on_garden_vegetable_id"
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
    t.string "sedding_desription"
    t.date "planting_start"
    t.date "planting_end"
    t.string "planting_description"
    t.date "harvesting_start"
    t.date "harvesting_end"
    t.string "harvesting_description"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "photo_vegetable"
    t.string "icon_vegetable"
  end

  add_foreign_key "garden_vegetables", "gardens"
  add_foreign_key "garden_vegetables", "vegetables"
  add_foreign_key "gardens", "users"
  add_foreign_key "relationships", "vegetables", column: "vegetable1_id"
  add_foreign_key "relationships", "vegetables", column: "vegetable2_id"
  add_foreign_key "tasks", "garden_vegetables"
end
