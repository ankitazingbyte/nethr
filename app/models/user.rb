class User < ApplicationRecord
	mount_uploader :image, ImageUploader
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        validates :email, uniqueness: true
        validates :email, presence: true
        validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "valid email please"

  def admin
		return self.has_role? :admin
	end

         # belongs_to :admin_employee

 
end
