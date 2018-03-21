class CreateAdminTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_tasks do |t|
      t.string :title
      t.string :assign_to
      t.string :start_date
      t.string :due_date
      t.string :estimated_hour
      t.string :progress
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
