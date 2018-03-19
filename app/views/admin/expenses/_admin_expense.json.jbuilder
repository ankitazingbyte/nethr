json.extract! admin_expense, :id, :item_name, :purchase_from, :purchase_date, :amount, :status, :created_at, :updated_at
json.url admin_expense_url(admin_expense, format: :json)
