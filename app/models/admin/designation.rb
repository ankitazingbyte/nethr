class Admin::Designation < ApplicationRecord
  # belongs_to :admin_department, optional: true
  # has_many :admin_jobs
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
