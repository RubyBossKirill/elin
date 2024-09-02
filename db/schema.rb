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

ActiveRecord::Schema[7.1].define(version: 2024_09_02_135409) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "mail"
    t.integer "phone"
    t.string "type_user"
    t.string "avatar"
    t.integer "balance"
    t.integer "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "date_payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "object_client"
    t.string "price_service"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "type_service"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id"
    t.index ["manager_id"], name: "index_services_on_manager_id"
  end

  add_foreign_key "services", "clients", column: "manager_id"
end
