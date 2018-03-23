class CreateAdminSlips < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_slips do |t|
      t.integer :admin_employee_id
      t.integer :admin_department_id
      t.integer :admin_designation_id
      t.string :basic_salary 
      t.string :payment_by
      t.string :tax
      t.string :provident_fund
      t.string :loan
      t.string :Leave_deduction
      t.string :grand_total

      t.timestamps
    end
  end
end
