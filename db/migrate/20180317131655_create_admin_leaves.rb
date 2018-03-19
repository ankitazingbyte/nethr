class CreateAdminLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_leaves do |t|
      t.integer :employee_id
      t.string :leave_type
      t.date :leave_from
      t.date :leave_to
      t.string :status
      t.string :reason

      t.timestamps
    end
  end
end
