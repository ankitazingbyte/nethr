class CreateAdminAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_assessments do |t|
      t.integer :admin_department_id
      t.string :training_type
      t.string :training_subject
      t.string :nature_of_training
      t.string :training_title
      t.integer :admin_employee_id
      t.string :training_reason
      t.integer :admin_trainer_id
      t.string :location
      t.string :start_date
      t.string :end_date
      t.string :training_cost
      t.string :travel_cost
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
