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

ActiveRecord::Schema.define(version: 2021_01_10_171213) do

  create_table "nutrients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_nutrients", force: :cascade do |t|
    t.integer "product_id"
    t.integer "nutrient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "value"
    t.index ["nutrient_id"], name: "index_product_nutrients_on_nutrient_id"
    t.index ["product_id"], name: "index_product_nutrients_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "calorie", default: 0
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "user_intake_infos", force: :cascade do |t|
    t.integer "target_intake", default: 2000
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_user_intake_infos_on_user_id"
  end

  create_table "user_intakes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_intake_info_id"
    t.index ["product_id"], name: "index_user_intakes_on_product_id"
    t.index ["user_id"], name: "index_user_intakes_on_user_id"
    t.index ["user_intake_info_id"], name: "index_user_intakes_on_user_intake_info_id"
  end

  create_table "user_products", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_user_products_on_product_id"
    t.index ["user_id"], name: "index_user_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
