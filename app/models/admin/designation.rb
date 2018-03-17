class Admin::Designation < ApplicationRecord
  belongs_to :admin_department, optional: true
end
