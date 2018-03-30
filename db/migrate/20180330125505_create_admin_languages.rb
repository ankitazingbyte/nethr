class CreateAdminLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_languages do |t|
      t.string :name
      t.string :status
      t.string :image

      t.timestamps
    end
  end
end
