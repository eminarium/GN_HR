# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180509113443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_types", force: true do |t|
    t.string   "address_type_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.integer  "address_type_id"
    t.integer  "employee_id"
    t.integer  "country_id"
    t.integer  "city_id"
    t.integer  "foreign_city_id"
    t.integer  "state_id"
    t.integer  "region_id"
    t.integer  "county_id"
    t.string   "street"
    t.string   "apartment"
    t.integer  "flat"
    t.string   "village"
    t.string   "quartal"
    t.string   "rayon"
    t.string   "street_passage"
    t.date     "register_start_date"
    t.date     "register_end_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["address_type_id"], name: "index_addresses_on_address_type_id", using: :btree
  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id", using: :btree
  add_index "addresses", ["country_id"], name: "index_addresses_on_country_id", using: :btree
  add_index "addresses", ["county_id"], name: "index_addresses_on_county_id", using: :btree
  add_index "addresses", ["employee_id"], name: "index_addresses_on_employee_id", using: :btree
  add_index "addresses", ["foreign_city_id"], name: "index_addresses_on_foreign_city_id", using: :btree
  add_index "addresses", ["region_id"], name: "index_addresses_on_region_id", using: :btree
  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id", using: :btree

  create_table "certificate_types", force: true do |t|
    t.string   "certificate_type_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certificates", force: true do |t|
    t.integer  "employee_id"
    t.integer  "certificate_type_id"
    t.string   "certificate_title"
    t.string   "certificate_no"
    t.string   "issued_by"
    t.date     "issued_date"
    t.date     "expiry_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "certificates", ["certificate_type_id"], name: "index_certificates_on_certificate_type_id", using: :btree
  add_index "certificates", ["employee_id"], name: "index_certificates_on_employee_id", using: :btree

  create_table "cities", force: true do |t|
    t.integer  "state_id"
    t.string   "city_name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "counties", force: true do |t|
    t.integer  "state_id"
    t.string   "county_name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "counties", ["state_id"], name: "index_counties_on_state_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "country_name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degrees", force: true do |t|
    t.string   "degree_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "department_title"
    t.integer  "parent_department_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_open"
  end

  create_table "educations", force: true do |t|
    t.integer  "employee_id"
    t.integer  "degree_id"
    t.string   "institution_title"
    t.string   "diploma_title"
    t.string   "diploma_no"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "educations", ["degree_id"], name: "index_educations_on_degree_id", using: :btree
  add_index "educations", ["employee_id"], name: "index_educations_on_employee_id", using: :btree

  create_table "employees", force: true do |t|
    t.integer  "nationality_id"
    t.integer  "marital_status_id"
    t.string   "photo_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "patronymic"
    t.boolean  "gender"
    t.date     "dob"
    t.boolean  "is_local"
    t.boolean  "is_military_liable"
    t.string   "local_passport_serial"
    t.string   "local_passport_no"
    t.date     "local_passport_given_date"
    t.string   "local_passport_issued_by"
    t.string   "local_passport_scan_url"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["marital_status_id"], name: "index_employees_on_marital_status_id", using: :btree
  add_index "employees", ["nationality_id"], name: "index_employees_on_nationality_id", using: :btree

  create_table "employees_positions", force: true do |t|
    t.integer  "employee_id"
    t.integer  "position_id"
    t.integer  "position_type_id"
    t.boolean  "is_released"
    t.boolean  "is_changed"
    t.integer  "release_reason_id"
    t.boolean  "is_temporary"
    t.date     "temporary_start_date"
    t.date     "temporary_end_date"
    t.text     "release_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "assign_order_id"
    t.integer  "release_order_id"
    t.date     "released_date"
    t.date     "assigned_date"
    t.text     "assign_notes"
  end

  add_index "employees_positions", ["employee_id"], name: "index_employees_positions_on_employee_id", using: :btree
  add_index "employees_positions", ["position_id"], name: "index_employees_positions_on_position_id", using: :btree
  add_index "employees_positions", ["position_type_id"], name: "index_employees_positions_on_position_type_id", using: :btree
  add_index "employees_positions", ["release_reason_id"], name: "index_employees_positions_on_release_reason_id", using: :btree

  create_table "foreign_cities", force: true do |t|
    t.integer  "country_id"
    t.string   "foreign_city_name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foreign_cities", ["country_id"], name: "index_foreign_cities_on_country_id", using: :btree

  create_table "general_order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "employee_id"
    t.text     "order_item_content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "order_item_date"
    t.text     "order_item_topic"
  end

  add_index "general_order_items", ["employee_id"], name: "index_general_order_items_on_employee_id", using: :btree
  add_index "general_order_items", ["order_id"], name: "index_general_order_items_on_order_id", using: :btree

  create_table "marital_statuses", force: true do |t|
    t.string   "marital_status_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nationalities", force: true do |t|
    t.string   "nationality_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "order_no"
    t.date     "order_date"
    t.string   "order_title"
    t.string   "prefix"
    t.string   "postfix"
    t.string   "order_scan_path"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paid_offday_types", force: true do |t|
    t.string   "paid_offday_type_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paid_offdays", force: true do |t|
    t.integer  "employee_id"
    t.integer  "order_id"
    t.integer  "paid_offday_type_id"
    t.date     "start_date"
    t.date     "return_date"
    t.integer  "day_quantity"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "paid_offdays", ["employee_id"], name: "index_paid_offdays_on_employee_id", using: :btree
  add_index "paid_offdays", ["order_id"], name: "index_paid_offdays_on_order_id", using: :btree
  add_index "paid_offdays", ["paid_offday_type_id"], name: "index_paid_offdays_on_paid_offday_type_id", using: :btree

  create_table "parent_types", force: true do |t|
    t.string   "parent_type_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: true do |t|
    t.integer  "employee_id"
    t.integer  "parent_type_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "patronymic"
    t.boolean  "gender"
    t.date     "dob"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parents", ["employee_id"], name: "index_parents_on_employee_id", using: :btree
  add_index "parents", ["parent_type_id"], name: "index_parents_on_parent_type_id", using: :btree

  create_table "phone_types", force: true do |t|
    t.string   "phone_type_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "employee_id"
    t.integer  "phone_type_id"
    t.string   "phone_no"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["employee_id"], name: "index_phones_on_employee_id", using: :btree
  add_index "phones", ["phone_type_id"], name: "index_phones_on_phone_type_id", using: :btree

  create_table "position_types", force: true do |t|
    t.string   "position_type_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.integer  "department_id"
    t.string   "position_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
  end

  add_index "positions", ["department_id"], name: "index_positions_on_department_id", using: :btree

  create_table "prolongations", force: true do |t|
    t.integer  "employees_position_id"
    t.date     "start_date"
    t.boolean  "is_temporary"
    t.date     "end_date"
    t.integer  "order_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prolongations", ["employees_position_id"], name: "index_prolongations_on_employees_position_id", using: :btree
  add_index "prolongations", ["order_id"], name: "index_prolongations_on_order_id", using: :btree

  create_table "regions", force: true do |t|
    t.integer  "state_id"
    t.string   "region_name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "regions", ["state_id"], name: "index_regions_on_state_id", using: :btree

  create_table "release_reasons", force: true do |t|
    t.string   "release_reason_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "state_name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unpaid_offday_types", force: true do |t|
    t.string   "unpaid_offday_type_title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unpaid_offdays", force: true do |t|
    t.integer  "unpaid_offday_type_id"
    t.integer  "employee_id"
    t.integer  "order_id"
    t.date     "start_date"
    t.date     "return_date"
    t.integer  "day_quantity"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unpaid_offdays", ["employee_id"], name: "index_unpaid_offdays_on_employee_id", using: :btree
  add_index "unpaid_offdays", ["order_id"], name: "index_unpaid_offdays_on_order_id", using: :btree
  add_index "unpaid_offdays", ["unpaid_offday_type_id"], name: "index_unpaid_offdays_on_unpaid_offday_type_id", using: :btree

  create_table "warnings", force: true do |t|
    t.integer  "employee_id"
    t.integer  "order_id"
    t.text     "warning_reason"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "warnings", ["employee_id"], name: "index_warnings_on_employee_id", using: :btree
  add_index "warnings", ["order_id"], name: "index_warnings_on_order_id", using: :btree

  create_table "work_experiences", force: true do |t|
    t.integer  "employee_id"
    t.string   "organization_title"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "position_title"
    t.integer  "position_type_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_experiences", ["employee_id"], name: "index_work_experiences_on_employee_id", using: :btree
  add_index "work_experiences", ["position_type_id"], name: "index_work_experiences_on_position_type_id", using: :btree

end
