class Admin::Employee < ApplicationRecord
	# has_one :user
    # accepts_nested_attributes_for :user
    has_many :admin_trainings
end
