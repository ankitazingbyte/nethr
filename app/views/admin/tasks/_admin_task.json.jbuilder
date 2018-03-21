json.extract! admin_task, :id, :title, :assign_to, :start_date, :due_date, :estimated_hour, :progress, :status, :description, :created_at, :updated_at
json.url admin_task_url(admin_task, format: :json)
