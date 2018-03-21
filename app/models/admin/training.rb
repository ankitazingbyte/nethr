class Admin::Training < ApplicationRecord
	belongs_to :admin_employees, optional: true
end
