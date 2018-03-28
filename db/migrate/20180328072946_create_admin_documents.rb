class CreateAdminDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_documents do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
