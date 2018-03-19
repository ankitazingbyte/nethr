json.extract! admin_notice, :id, :title, :status, :description, :created_at, :updated_at
json.url admin_notice_url(admin_notice, format: :json)
