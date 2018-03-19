json.extract! admin_event, :id, :title, :starttime, :all_day, :description, :created_at, :updated_at
json.url admin_event_url(admin_event, format: :json)
