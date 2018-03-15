class CreateAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :awards do |t|
      t.string :name
      t.string :gift
      t.integer :cash_price
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
