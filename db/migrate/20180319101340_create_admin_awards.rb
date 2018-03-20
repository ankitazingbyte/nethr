class CreateAdminAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_awards do |t|
      t.string :name
      t.integer :admin_employee_id
      t.string :gift_item
      t.integer :cash_price
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
