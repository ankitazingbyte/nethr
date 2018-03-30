class CreateAdminTaxRules < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_tax_rules do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
