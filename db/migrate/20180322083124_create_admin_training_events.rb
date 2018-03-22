class CreateAdminTrainingEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_training_events do |t|
      t.string :training_type
      t.string :subject
      t.string :nature_of_training
      t.string :title
      t.string :location
      t.string :sponsored_by
      t.string :organized_by
      t.string :training_from
      t.string :training_to
      t.integer :admin_employee_id
      t.integer :admin_trainer_id
      t.string :status
      t.string :external
      t.string :description

      t.timestamps
    end
  end
end
