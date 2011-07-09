class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :employee_number
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :civil_status
      t.date :birthday
      t.string :employment_status
      t.date :date_hired
      t.date :date_regular
      t.decimal :daily_salary, :scale => 2
      t.integer :position_id
      t.integer :company_branch_id

      t.timestamps
    end

     add_index :employees, :employee_number, :unique => true
     add_index :employees, :position_id
     add_index :employees, :company_branch_id

  end

  def self.down
    drop_table :employees
  end
end

