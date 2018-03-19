class CreateAdminNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_notices do |t|
      t.string :title
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
