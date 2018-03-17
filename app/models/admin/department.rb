class Admin::Department < ApplicationRecord
	has_many :admin_designations
end
