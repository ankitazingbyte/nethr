json.extract! admin_assessment, :id, :admin_department_id, :training_type, :training_subject, :nature_of_training, :training_title, :admin_employee_id, :training_reason, :admin_trainer_id, :location, :start_date, :end_date, :training_cost, :travel_cost, :status, :description, :created_at, :updated_at
json.url admin_assessment_url(admin_assessment, format: :json)
