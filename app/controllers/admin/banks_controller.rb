class Admin::BanksController < Admin::AdminController
  before_action :set_admin_bank, only: [:show, :edit, :update, :destroy]

  def index
    @admin_banks = Admin::Bank.all
  end

  def show
  end

  def new
    @admin_bank = Admin::Bank.new
  end

  def edit
  end

  def create
    @admin_bank = Admin::Bank.new(admin_bank_params)

      if @admin_bank.save
        flash[:success] = "Department successfully created"
        redirect_to @admin_bank
      else
        render 'new' 
      end
  end

  def update
      if @admin_bank.update(admin_bank_params)
        flash[:success] = "Department successfully updated"
        redirect_to @admin_bank
      else
        render 'edit' 
      end
  end

  def destroy
    @admin_bank.destroy
    flash[:success] = "Department successfully deleted"
      redirect_to admin_banks_url
  end

  private
    
    def set_admin_bank
      @admin_bank = Admin::Bank.find(params[:id])
    end

    def admin_bank_params
      params.require(:admin_bank).permit(:name, :branch_name, :account_name,:account_number, :ifsc_code, :pan_number)
    end
end
