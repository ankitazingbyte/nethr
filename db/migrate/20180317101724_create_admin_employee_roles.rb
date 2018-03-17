class CreateAdminEmployeeRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_employee_roles do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
