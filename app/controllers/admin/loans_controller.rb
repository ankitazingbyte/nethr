class Admin::LoansController < ApplicationController
  before_action :set_admin_loan, only: [:show, :edit, :update, :destroy]

  # GET /admin/loans
  # GET /admin/loans.json
  def index
    @admin_loans = Admin::Loan.all
  end

  # GET /admin/loans/1
  # GET /admin/loans/1.json
  def show
  end

  # GET /admin/loans/new
  def new
    @admin_loan = Admin::Loan.new
  end

  # GET /admin/loans/1/edit
  def edit
  end

  # POST /admin/loans
  # POST /admin/loans.json
  def create
    @admin_loan = Admin::Loan.new(admin_loan_params)

    respond_to do |format|
      if @admin_loan.save
        format.html { redirect_to @admin_loan, notice: 'Loan was successfully created.' }
        format.json { render :show, status: :created, location: @admin_loan }
      else
        format.html { render :new }
        format.json { render json: @admin_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/loans/1
  # PATCH/PUT /admin/loans/1.json
  def update
    respond_to do |format|
      if @admin_loan.update(admin_loan_params)
        format.html { redirect_to @admin_loan, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_loan }
      else
        format.html { render :edit }
        format.json { render json: @admin_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/loans/1
  # DELETE /admin/loans/1.json
  def destroy
    @admin_loan.destroy
    respond_to do |format|
      format.html { redirect_to admin_loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_loan
      @admin_loan = Admin::Loan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_loan_params
      params.require(:admin_loan).permit(:admin_employee_id, :title, :loan_date, :loan_amount, :monthly_payement, :repayment_start_date, :status, :description)
    end
end
