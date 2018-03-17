class CreateAdminDesignations < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_designations do |t|
      t.string :name
      t.references :admin_department, foreign_key: true

      t.timestamps
    end
  end
end
