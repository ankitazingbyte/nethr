class Admin::SlipsController < ApplicationController
  before_action :set_admin_slip, only: [:show, :edit, :update, :destroy]


  def index
    @admin_slips = Admin::Slip.all
  end

  def show
  end

  def new
    @admin_slip = Admin::Slip.new
  end

  def edit
  end

  def create
    @admin_slip = Admin::Slip.new(admin_slip_params)

    if @admin_slip.save
      redirect_to action: "index"
    else
      render 'new '
    end
  end

  def update
    if @admin_slip.update(admin_slip_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @admin_slip.destroy
    redirect_to admin_slips_url
  end

  private

    def set_admin_slip
      @admin_slip = Admin::Slip.find(params[:id])
    end

    def admin_slip_params
      params.require(:admin_slip).permit(:admin_employee_id, :admin_increment_id,:admin_department_id, :admin_designation_id, :basic_salary, :payment_by, :tax, :provident_fund, :loan, :Leave_deduction, :grand_total)
    end
end
