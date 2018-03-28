class CreateAdminBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_banks do |t|
      t.string :name
      t.string :branch_name
      t.string :account_name
      t.string :ifsc_code
      t.string :pan_number
      t.string :account_number

      t.timestamps
    end
  end
end
