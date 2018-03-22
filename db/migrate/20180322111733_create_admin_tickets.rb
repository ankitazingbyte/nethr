class CreateAdminTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_tickets do |t|
      t.integer :admin_employee_id
      t.string :subject
      t.string :message
      t.string :status
      t.integer :admin_department_id

      t.timestamps
    end
  end
end
