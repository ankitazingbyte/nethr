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

ActiveRecord::Schema.define(version: 20180315130042) do

  create_table "awards", force: :cascade do |t|
    t.string "name"
    t.string "gift"
    t.integer "cash_price"
    t.string "month"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designations", force: :cascade do |t|
    t.string "name"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_designations_on_department_id"
  end

  create_table "holidays", force: :cascade do |t|
    t.date "date"
    t.string "occasion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
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
    t.index ["designation_id"], name: "index_jobs_on_designation_id"
  end

  create_table "notices", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
