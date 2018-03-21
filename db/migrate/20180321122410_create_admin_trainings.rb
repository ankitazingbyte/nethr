class CreateAdminTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_trainings do |t|
      t.integer :admin_employee_id
      t.string :training_type
      t.string :training_subject
      t.string :nature
      t.string :title
      t.integer :admin_trainer_id
      t.string :training_from
      t.string :training_to
      t.string :location
      t.string :description
      t.string :sponsored_by
      t.string :organized_by

      t.timestamps
    end
  end
end
