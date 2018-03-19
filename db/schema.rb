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

ActiveRecord::Schema.define(version: 20180319115537) do

  create_table "admin_awards", force: :cascade do |t|
    t.string "name"
    t.integer "employee_id"
    t.string "gift_item"
    t.integer "cash_price"
    t.string "month"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_designations", force: :cascade do |t|
    t.string "name"
    t.integer "admin_department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_department_id"], name: "index_admin_designations_on_admin_department_id"
  end

  create_table "admin_employee_roles", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "employee_code"
    t.integer "admin_department_id"
    t.integer "admin_designation_id"
    t.string "gender"
    t.string "tax_example"
    t.string "date_of_birth"
    t.string "date_of_join"
    t.string "date_of_leave"
    t.string "present_address"
    t.string "permanent_address"
    t.string "phone"
    t.string "alternative_phone"
    t.string "status"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_event_series", force: :cascade do |t|
    t.integer "frequency", default: 1
    t.string "period", default: "monthly"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean "all_day", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_events", force: :cascade do |t|
    t.string "title"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean "all_day"
    t.string "description"
    t.integer "admin_event_series_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_expenses", force: :cascade do |t|
    t.string "item_name"
    t.string "purchase_from"
    t.string "purchase_date"
    t.integer "amount"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_jobs", force: :cascade do |t|
    t.integer "designation_id"
    t.string "number_of_post"
    t.string "job_type"
    t.string "experience"
    t.string "age"
    t.string "job_location"
    t.string "salary"
    t.string "post_date"
    t.string "last_date_to_apply"
    t.string "close_date"
    t.string "status"
    t.string "short_description"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_leaves", force: :cascade do |t|
    t.integer "employee_id"
    t.string "leave_type"
    t.date "leave_from"
    t.date "leave_to"
    t.string "status"
    t.string "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_notices", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
