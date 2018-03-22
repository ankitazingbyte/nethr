json.extract! admin_training_event, :id, :training_type, :subject, :nature_of_training, :title, :location, :sponsored_by, :organized_by, :training_from, :training_to, :admin_employee_id, :admin_trainer_id, :status, :created_at, :updated_at
json.url admin_training_event_url(admin_training_event, format: :json)
