class HomeController < BaseController
	def index
		@admin_leaves = Admin::Leave.all
		@admin_expenses = Admin::Expense.all
		@admin_tasks = Admin::Task.all
		@admin_tickets = Admin::Ticket.all
	end
end
