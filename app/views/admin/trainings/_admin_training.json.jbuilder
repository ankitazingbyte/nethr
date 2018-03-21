json.extract! admin_training, :id, :admin_employee_id, :training_type, :training_subject, :nature, :title, :admin_trainer_id, :created_at, :updated_at
json.url admin_training_url(admin_training, format: :json)
