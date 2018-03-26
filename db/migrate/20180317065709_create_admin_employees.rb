class CreateAdminEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :employee_code
      t.integer :admin_department_id
      t.integer :admin_designation_id
      t.integer :admin_employee_role_id
      t.string :gender
      t.string :tax_example
      t.string :date_of_birth
      t.string :date_of_join
      t.string :date_of_leave
      t.string :present_address
      t.string :permanent_address
      t.string :phone
      t.string :alternative_phone
      t.string :status
      t.string :user_id

      t.timestamps
    end
  end
end
