class Admin::ExpensesController < ApplicationController
  before_action :set_admin_expense, only: [:show, :edit, :update, :destroy]

  # GET /admin/expenses
  # GET /admin/expenses.json
  def index
    @admin_expenses = Admin::Expense.all
  end

  # GET /admin/expenses/1
  # GET /admin/expenses/1.json
  def show
  end

  # GET /admin/expenses/new
  def new
    @admin_expense = Admin::Expense.new
  end

  # GET /admin/expenses/1/edit
  def edit
  end

  # POST /admin/expenses
  # POST /admin/expenses.json
  def create
    @admin_expense = Admin::Expense.new(admin_expense_params)

    respond_to do |format|
      if @admin_expense.save
        format.html { redirect_to @admin_expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @admin_expense }
      else
        format.html { render :new }
        format.json { render json: @admin_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/expenses/1
  # PATCH/PUT /admin/expenses/1.json
  def update
    respond_to do |format|
      if @admin_expense.update(admin_expense_params)
        format.html { redirect_to @admin_expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_expense }
      else
        format.html { render :edit }
        format.json { render json: @admin_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/expenses/1
  # DELETE /admin/expenses/1.json
  def destroy
    @admin_expense.destroy
    respond_to do |format|
      format.html { redirect_to admin_expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_expense
      @admin_expense = Admin::Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_expense_params
      params.require(:admin_expense).permit(:item_name, :purchase_from, :purchase_date, :amount, :status)
    end
end
