class Admin::LoansController < Admin::AdminController
  before_action :set_admin_loan, only: [:show, :edit, :update, :destroy]


  def index
    @admin_loans = Admin::Loan.all
  end

  def show
  end

  def new
    @admin_loan = Admin::Loan.new
  end

  def edit
  end

  def create
    @admin_loan = Admin::Loan.new(admin_loan_params)
    if @admin_loan.save
      flash[:success] = "Department successfully created"
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    if @admin_loan.update(admin_loan_params)
      flash[:success] = "Department successfully updated"
      redirect_to action: "index"
    else
      render 'edit' 
    end
  end

  def destroy
    @admin_loan.destroy
    flash[:success] = "Department successfully deleted"
      redirect_to admin_loans_url
  end

  private

    def set_admin_loan
      @admin_loan = Admin::Loan.find(params[:id])
    end

    def admin_loan_params
      params.require(:admin_loan).permit(:admin_employee_id, :title, :loan_date, :loan_amount, :monthly_payement, :repayment_start_date, :status, :description)
    end
end
