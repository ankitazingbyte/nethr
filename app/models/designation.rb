class Designation < ApplicationRecord
  belongs_to :department, optional: true
  has_many :jobs
end
