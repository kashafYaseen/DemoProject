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

ActiveRecord::Schema.define(version: 2022_08_19_070859) do

  create_table "add_ons", force: :cascade do |t|
    t.string "addOn_name"
    t.integer "addOn_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.text "customer_address"
    t.integer "customer_contactNo"
    t.string "customer_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deals", force: :cascade do |t|
    t.string "deal_name"
    t.text "deal_item"
    t.integer "deal_price"
    t.integer "discount_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discount_id"], name: "index_deals_on_discount_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.integer "percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "emp_name"
    t.text "emp_address"
    t.integer "emp_contactNo"
    t.string "emp_email"
    t.string "emp_position"
    t.integer "manager_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_employees_on_restaurant_id"
  end

  create_table "menu_addons", force: :cascade do |t|
    t.integer "menu_item_id", null: false
    t.integer "add_on_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["add_on_id"], name: "index_menu_addons_on_add_on_id"
    t.index ["menu_item_id"], name: "index_menu_addons_on_menu_item_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "item_name"
    t.integer "item_price"
    t.string "item_category"
    t.integer "discount_id", null: false
    t.integer "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discount_id"], name: "index_menu_items_on_discount_id"
    t.index ["menu_id"], name: "index_menu_items_on_menu_id"
  end

  create_table "menu_items_deals", force: :cascade do |t|
    t.integer "menu_item_id", null: false
    t.integer "deal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deal_id"], name: "index_menu_items_deals_on_deal_id"
    t.index ["menu_item_id"], name: "index_menu_items_deals_on_menu_item_id"
  end

  create_table "menu_options", force: :cascade do |t|
    t.integer "menu_item_id", null: false
    t.integer "optional_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_menu_options_on_menu_item_id"
    t.index ["optional_item_id"], name: "index_menu_options_on_optional_item_id"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "menu_id"
    t.string "menu_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "optional_items", force: :cascade do |t|
    t.string "item_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.text "orderItem_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_id", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "order_vouchers", force: :cascade do |t|
    t.integer "promo_code"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ordered_menu_items", force: :cascade do |t|
    t.integer "menu_item_id", null: false
    t.integer "order_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_ordered_menu_items_on_menu_item_id"
    t.index ["order_item_id"], name: "index_ordered_menu_items_on_order_item_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_id"
    t.text "order_descr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurant_id", null: false
    t.integer "employee_id", null: false
    t.integer "customer_id", null: false
    t.integer "order_voucher_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["employee_id"], name: "index_orders_on_employee_id"
    t.index ["order_voucher_id"], name: "index_orders_on_order_voucher_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "total_payment"
    t.string "payment_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_id", null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name"
    t.integer "restaurant_contactNo"
    t.string "restaurant_status"
    t.datetime "restaurant_timings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.text "voucher_description"
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_vouchers_on_order_id"
  end

  add_foreign_key "deals", "discounts"
  add_foreign_key "employees", "restaurants"
  add_foreign_key "menu_addons", "add_ons"
  add_foreign_key "menu_addons", "menu_items"
  add_foreign_key "menu_items", "discounts"
  add_foreign_key "menu_items", "menus"
  add_foreign_key "menu_items_deals", "deals"
  add_foreign_key "menu_items_deals", "menu_items"
  add_foreign_key "menu_options", "menu_items"
  add_foreign_key "menu_options", "optional_items"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "order_items", "orders"
  add_foreign_key "ordered_menu_items", "menu_items"
  add_foreign_key "ordered_menu_items", "order_items"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "order_vouchers"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "payments", "orders"
  add_foreign_key "vouchers", "orders"
end
