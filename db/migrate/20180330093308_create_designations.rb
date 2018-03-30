class CreateDesignations < ActiveRecord::Migration[5.1]
  def change
    create_table :designations do |t|
      t.string :name
      t.integer :admin_department_id

      t.timestamps
    end
  end
end
