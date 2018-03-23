json.extract! admin_loan, :id, :admin_employee_id, :title, :loan_date, :loan_amount, :monthly_payement, :repayment_start_date, :status, :description, :created_at, :updated_at
json.url admin_loan_url(admin_loan, format: :json)
