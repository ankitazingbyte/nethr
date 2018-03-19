class CreateAdminExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_expenses do |t|
      t.string :item_name
      t.string :purchase_from
      t.string :purchase_date
      t.integer :amount
      t.string :status

      t.timestamps
    end
  end
end
