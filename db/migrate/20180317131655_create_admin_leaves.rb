class CreateAdminLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_leaves do |t|
      t.integer :admin_employee_id
      t.string :leave_type
      t.string :leave_from
      t.string :leave_to
      t.string :status
      t.string :reason

      t.timestamps
    end
  end
end
