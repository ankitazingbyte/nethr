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

ActiveRecord::Schema.define(version: 20180330125505) do

  create_table "admin_assessments", force: :cascade do |t|
    t.integer "admin_department_id"
    t.string "training_type"
    t.string "training_subject"
    t.string "nature_of_training"
    t.string "training_title"
    t.integer "admin_employee_id"
    t.string "training_reason"
    t.integer "admin_trainer_id"
    t.string "location"
    t.string "start_date"
    t.string "end_date"
    t.string "training_cost"
    t.string "travel_cost"
    t.string "status"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_awards", force: :cascade do |t|
    t.string "name"
    t.integer "admin_employee_id"
    t.string "gift_item"
    t.integer "cash_price"
    t.string "month"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_banks", force: :cascade do |t|
    t.string "name"
    t.string "branch_name"
    t.string "account_name"
    t.string "ifsc_code"
    t.string "pan_number"
    t.string "account_number"
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

  create_table "admin_documents", force: :cascade do |t|
    t.string "name"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "user_name"
    t.string "employee_code"
    t.integer "admin_department_id"
    t.integer "admin_designation_id"
    t.integer "admin_employee_role_id"
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
    t.string "image"
    t.string "mother"
    t.string "father"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_evaluations", force: :cascade do |t|
    t.string "title"
    t.string "description"
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
    t.integer "admin_employee_id"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_funds", force: :cascade do |t|
    t.integer "admin_employee_id"
    t.string "fund_type"
    t.string "employee_share"
    t.string "organization_share"
    t.string "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_holidays", force: :cascade do |t|
    t.string "date"
    t.string "occasion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_increments", force: :cascade do |t|
    t.integer "admin_employee_id"
    t.integer "admin_designation_id"
    t.string "current_salary"
    t.string "increment_salary"
    t.string "date_from"
    t.string "date_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_jobs", force: :cascade do |t|
    t.integer "admin_designation_id"
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

  create_table "admin_languages", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_leaves", force: :cascade do |t|
    t.integer "admin_employee_id"
    t.string "leave_type"
    t.string "leave_from"
    t.string "leave_to"
    t.string "status"
    t.string "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_loans", force: :cascade do |t|
    t.integer "admin_employee_id"
    t.string "title"
    t.string "loan_date"
    t.string "loan_amount"
    t.string "monthly_payement"
    t.string "repayment_start_date"
    t.string "status"
    t.string "description"
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

  create_table "admin_slips", force: :cascade do |t|
    t.integer "admin_employee_id"
    t.integer "admin_department_id"
    t.integer "admin_designation_id"
    t.string "admin_increment_id"
    t.string "basic_salary"
    t.string "payment_by"
    t.string "tax"
    t.string "provident_fund"
    t.string "loan"
    t.string "Leave_deduction"
    t.string "grand_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_support_departments", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "show_in_client"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_task_discussions", force: :cascade do |t|
    t.string "comment"
    t.integer "admin_employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_task_files", force: :cascade do |t|
    t.string "title"
    t.string "attachment"
    t.integer "admin_employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_tasks", force: :cascade do |t|
    t.string "title"
    t.string "assign_to"
    t.string "start_date"
    t.string "due_date"
    t.string "estimated_hour"
    t.string "progress"
    t.string "status"
    t.string "description"
    t.integer "admin_employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_tax_rules", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_tickets", force: :cascade do |t|
    t.integer "admin_employee_id"
    t.string "subject"
    t.string "message"
    t.string "status"
    t.integer "admin_department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_trainers", force: :cascade do |t|
    t.string "first_name"
    t.string "lastname"
    t.string "designation"
    t.string "organization"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.string "country"
    t.string "email"
    t.integer "phone"
    t.string "trainer_expertise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_training_events", force: :cascade do |t|
    t.string "training_type"
    t.string "subject"
    t.string "nature_of_training"
    t.string "title"
    t.string "location"
    t.string "sponsored_by"
    t.string "organized_by"
    t.string "training_from"
    t.string "training_to"
    t.integer "admin_employee_id"
    t.integer "admin_trainer_id"
    t.string "status"
    t.string "external"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_trainings", force: :cascade do |t|
    t.integer "admin_employee_id"
    t.string "training_type"
    t.string "training_subject"
    t.string "nature"
    t.string "title"
    t.integer "admin_trainer_id"
    t.string "training_from"
    t.string "training_to"
    t.string "location"
    t.string "description"
    t.string "sponsored_by"
    t.string "organized_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designations", force: :cascade do |t|
    t.string "name"
    t.integer "admin_department_id"
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
    t.string "image"
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
