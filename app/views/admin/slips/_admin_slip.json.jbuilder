json.extract! admin_slip, :id, :admin_employee_id, :admin_department_id, :admin_designation_id, :payment_by, :tax, :provident_fund, :loan, :Leave_deduction, :grand_total, :created_at, :updated_at
json.url admin_slip_url(admin_slip, format: :json)
