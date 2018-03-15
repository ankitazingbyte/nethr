class Job < ApplicationRecord
  belongs_to :designation, optional: true
end
