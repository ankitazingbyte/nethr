class Admin::IncrementsController < Admin::AdminController
  before_action :set_admin_increment, only: [:show, :edit, :update, :destroy]

  def index
    @admin_increments = Admin::Increment.all
    @admin_increments = Admin::Increment.search(params[:name])
  end

  def show
  end

  def new
    @admin_increment = Admin::Increment.new
  end

  def edit
  end

  def create
    @admin_increment = Admin::Increment.new(admin_increment_params)
      if @admin_increment.save
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
    if @admin_increment.update(admin_increment_params)
      flash[:success] = "Department successfully updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @admin_increment.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_increments_url
  end

  private

    def set_admin_increment
      @admin_increment = Admin::Increment.find(params[:id])
    end

    def admin_increment_params
      params.require(:admin_increment).permit(:admin_employee_id, :admin_designation_id, :current_salary, :increment_salary)
    end
end
