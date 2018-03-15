json.extract! job, :id, :designation_id_id, :number_of_post, :job_type, :experience, :age_string, :job_location, :salary, :post_date, :last_date_to_apply, :close_date, :status, :short_description, :description, :created_at, :updated_at
json.url job_url(job, format: :json)
