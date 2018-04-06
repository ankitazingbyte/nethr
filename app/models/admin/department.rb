class Admin::Department < ApplicationRecord
	# has_many :admin_designations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
end
