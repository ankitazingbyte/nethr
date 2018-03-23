class CreateAdminIncrements < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_increments do |t|
      t.integer :admin_employee_id
      t.integer :admin_designation_id
      t.string :current_salary
      t.string :increment_salary

      t.timestamps
    end
  end
end
