class Admin::AdminController < ApplicationController
	layout 'admin'

	before_action :authenticate_user!

 	 def after_sign_in_path_for(user)
	    if user.has_role? :admin
	      admin_home_index_path
	    else
	      user_root_path
	    end
  	end
end

