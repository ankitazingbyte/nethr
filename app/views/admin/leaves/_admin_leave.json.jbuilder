json.extract! admin_leave, :id, :employee_id, :leave_type, :leave_from, :leave_to, :status, :reason, :created_at, :updated_at
json.url admin_leave_url(admin_leave, format: :json)
