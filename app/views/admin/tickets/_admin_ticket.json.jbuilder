json.extract! admin_ticket, :id, :admin_employee_id, :subject, :message, :created_at, :updated_at
json.url admin_ticket_url(admin_ticket, format: :json)
