json.extract! admin_bank, :id, :name, :branch_name, :account_name, :ifsc_code, :pan_number, :created_at, :updated_at
json.url admin_bank_url(admin_bank, format: :json)
