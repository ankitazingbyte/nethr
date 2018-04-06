class Admin::ExpensesController < Admin::AdminController
  before_action :set_admin_expense, only: [:show, :edit, :update, :destroy]

  def index
    @admin_expenses = Admin::Expense.all
  end

  def show
  end

  def new
    @admin_expense = Admin::Expense.new
  end

  def edit
  end

  def create
    @admin_expense = Admin::Expense.new(admin_expense_params)
      if @admin_expense.save
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_expense.update(admin_expense_params)
        flash[:success] = "Department successfully updated"
        redirect_to action: "index"
      else
        render 'edit' 
      end
  end

  def destroy
    @admin_expense.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_expenses_url
  end

  private

    def set_admin_expense
      @admin_expense = Admin::Expense.find(params[:id])
    end

    def admin_expense_params
      params.require(:admin_expense).permit(:item_name, :purchase_from, :purchase_date, :amount, :status, :attachment, :admin_employee_id)
    end
end
