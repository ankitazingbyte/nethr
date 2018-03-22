class CreateAdminSupportDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_support_departments do |t|
      t.string :name
      t.string :email
      t.string :show_in_client

      t.timestamps
    end
  end
end
