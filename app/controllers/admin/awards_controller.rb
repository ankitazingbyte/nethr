class Admin::AwardsController < Admin::AdminController
  before_action :set_admin_award, only: [:show, :edit, :update, :destroy]

  def index
    @admin_awards = Admin::Award.all
  end

  def show
  end

  def new
    @admin_award = Admin::Award.new
  end

  def edit
  end
 
  def create
    @admin_award = Admin::Award.new(admin_award_params)

    if @admin_award.save
      flash[:success] = "Department successfully created"
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update

    if @admin_award.update(admin_award_params)
      flash[:success] = "Department successfully updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @admin_award.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_awards_url
  end

  private
   
    def set_admin_award
      @admin_award = Admin::Award.find(params[:id])
    end

    def admin_award_params
      params.require(:admin_award).permit(:name, :admin_employee_id, :gift_item, :cash_price, :month, :year)
    end
end
