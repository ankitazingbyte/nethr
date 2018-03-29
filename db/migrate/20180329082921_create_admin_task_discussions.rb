class CreateAdminTaskDiscussions < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_task_discussions do |t|
      t.string :comment
      t.integer :admin_employee_id

      t.timestamps
    end
  end
end
