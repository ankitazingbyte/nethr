class CreateAdminTrainers < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_trainers do |t|
      t.string :first_name
      t.string :lastname
      t.string :designation
      t.string :organization
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :country
      t.string :email
      t.integer :phone
      t.string :trainer_expertise

      t.timestamps
    end
  end
end
