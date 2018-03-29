class Admin::Employee < ApplicationRecord
	mount_uploader :image, ImageUploader
	# has_one :user
    # accepts_nested_attributes_for :user
    #has_many :admin_trainings
    #has_many :admin_expenses
    #has_many :admin_leaves
end
