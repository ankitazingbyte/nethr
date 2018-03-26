class Admin::Expense < ApplicationRecord
	belongs_to :admin_employee, optional: true
end
