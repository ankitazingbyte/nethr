json.extract! admin_employee, :id, :first_name, :last_name, :employee_code, :admin_department_id, :admin_designation_id, :gender, :tax_example, :created_at, :updated_at
json.url admin_employee_url(admin_employee, format: :json)
