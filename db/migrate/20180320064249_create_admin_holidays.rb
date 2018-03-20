class CreateAdminHolidays < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_holidays do |t|
      t.string :date
      t.string :occasion

      t.timestamps
    end
  end
end
