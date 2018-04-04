class BaseController < ApplicationController 
	protect_from_forgery with: :exception
   	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!

  protected

    def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :image, :email, :password, :password_confirmation, :first_name, :last_name, 
	    	:user_name, :employee_code, :admin_department_id, :admin_designation_id, :admin_employee_role_id, :gender, :tax_example, :date_of_birth,
	    	:date_of_join, :date_of_leave, :present_address, :permanent_address, :phone, :alternative_phone, :status, :mother, :father])  
  	end

    def after_sign_in_path_for(resource)
    	if current_user.admin
    		admin_root_path
    	else
    		root_path
    	end
    end
end