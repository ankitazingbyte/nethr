class Admin::HolidaysController < Admin::AdminController
  before_action :set_admin_holiday, only: [:show, :edit, :update, :destroy]

  def index
    @admin_holidays = Admin::Holiday.all
  end

  def show
  end

  def new
    @admin_holiday = Admin::Holiday.new
  end

  def edit
  end

  def create
    @admin_holiday = Admin::Holiday.new(admin_holiday_params)
      if @admin_holiday.save
        flash[:success] = "Department successfully created"
        redirect_to @admin_holiday
      else
        render 'new'
      end
  end

  def update
      if @admin_holiday.update(admin_holiday_params)
        flash[:success] = "Department successfully updated"
        redirect_to @admin_holiday
      else
        render 'edit' 
      end
  end

  def destroy
    @admin_holiday.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_holidays_url
  end

  private

    def set_admin_holiday
      @admin_holiday = Admin::Holiday.find(params[:id])
    end

    def admin_holiday_params
      params.require(:admin_holiday).permit(:date, :occasion)
    end
end
