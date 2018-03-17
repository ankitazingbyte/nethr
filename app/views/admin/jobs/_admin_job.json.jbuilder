json.extract! admin_job, :id, :designation_id, :number_of_post, :job_type, :experience, :age, :job_location, :salary, :post_date, :last_date_to_apply, :close_date, :status, :short_description, :description, :created_at, :updated_at
json.url admin_job_url(admin_job, format: :json)
