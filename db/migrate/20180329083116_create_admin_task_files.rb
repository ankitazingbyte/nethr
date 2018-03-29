class CreateAdminTaskFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_task_files do |t|
      t.string :title
      t.string :attachment
      t.integer :admin_employee_id

      t.timestamps
    end
  end
end
