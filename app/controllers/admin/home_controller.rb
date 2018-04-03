class Admin::HomeController < Admin::AdminController
	def index
		@admin_leaves = Admin::Leave.all
		@admin_expenses = Admin::Expense.all
		@admin_tasks = Admin::Task.all
		@admin_tickets = Admin::Ticket.all
	end

	def payroll_summery
		@admin_employees = Admin::Employee.all
		@admin_increments = Admin::Increment.search(params[:search])
	end
	
	def salary_statement
		@admin_increaments = Admin::Increament.search(params[:search])
	end

	def job_applicant

	end
	
	def system

	end
end