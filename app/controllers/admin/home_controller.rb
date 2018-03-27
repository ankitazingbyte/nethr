class Admin::HomeController < Admin::AdminController
	def index
	end

	def payroll_summery
		@admin_employees = Admin::Employee.all
	end
	
	def salary_statement
		@admin_increaments = Admin::Increament.search(params[:search])
	end
end