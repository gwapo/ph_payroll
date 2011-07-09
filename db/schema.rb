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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110709071134) do

  create_table "company_branches", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.text     "descriptions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "employee_number"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.string   "civil_status"
    t.date     "birthday"
    t.string   "employment_status"
    t.date     "date_hired"
    t.date     "date_regular"
    t.decimal  "daily_salary",      :precision => 10, :scale => 0
    t.integer  "position_id"
    t.integer  "company_branch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["company_branch_id"], :name => "index_employees_on_company_branch_id"
  add_index "employees", ["employee_number"], :name => "index_employees_on_employee_number", :unique => true
  add_index "employees", ["position_id"], :name => "index_employees_on_position_id"

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.text     "descriptions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
