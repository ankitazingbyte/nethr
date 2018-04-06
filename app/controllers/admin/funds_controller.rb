class Admin::FundsController < Admin::AdminController
  before_action :set_admin_fund, only: [:show, :edit, :update, :destroy]

  def index
    @admin_funds = Admin::Fund.all
  end


  def show
  end


  def new
    @admin_fund = Admin::Fund.new
  end

  def edit
  end

  def create
    @admin_fund = Admin::Fund.new(admin_fund_params)
      if @admin_fund.save
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
    if @admin_fund.update(admin_fund_params)
      flash[:success] = "Department successfully updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @admin_fund.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_funds_url
  end

  private

    def set_admin_fund
      @admin_fund = Admin::Fund.find(params[:id])
    end

    def admin_fund_params
      params.require(:admin_fund).permit(:admin_employee_id, :fund_type, :employee_share, :organization_share, :description, :status)
    end
end
