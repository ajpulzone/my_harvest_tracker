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

ActiveRecord::Schema[7.1].define(version: 2024_09_10_054043) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.date "purchase_date"
    t.date "bloom_start_date"
    t.date "bloom_end_date"
    t.date "harvest_start_date"
    t.date "harvest_end_date"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plot_plants", force: :cascade do |t|
    t.bigint "plant_id", null: false
    t.bigint "plot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plot_plants_on_plant_id"
    t.index ["plot_id"], name: "index_plot_plants_on_plot_id"
  end

  create_table "plots", force: :cascade do |t|
    t.string "name"
    t.float "size"
    t.bigint "property_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_plots_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.integer "zipcode"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "plot_plants", "plants"
  add_foreign_key "plot_plants", "plots"
  add_foreign_key "plots", "properties"
  add_foreign_key "properties", "users"
end
