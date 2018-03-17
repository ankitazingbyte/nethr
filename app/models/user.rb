class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         belongs_to :admin_employee

  def admin
		return self.has_role? :admin
	end
	def ngo
		return self.has_role? :ngo
	end
end
