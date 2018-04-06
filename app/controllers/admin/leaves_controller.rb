class Admin::LeavesController < Admin::AdminController
  before_action :set_admin_leave, only: [:show, :edit, :update, :destroy]

  def index
    @admin_leaves = Admin::Leave.all
  end

  def show
  end

  def new
    @admin_leave = Admin::Leave.new
  end

  def edit
  end

  def create
    @admin_leave = Admin::Leave.new(admin_leave_params)
    if @admin_leave.save
      flash[:success] = "Department successfully created"
      redirect_to action: "index"
    else
      render 'new' 
    end
  end

  def update
    if @admin_leave.update(admin_leave_params)
      flash[:success] = "Department successfully updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @admin_leave.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_leaves_url
  end

  private

    def set_admin_leave
      @admin_leave = Admin::Leave.find(params[:id])
    end

    def admin_leave_params
      params.require(:admin_leave).permit(:admin_employee_id, :leave_type, :leave_from, :leave_to, :status, :reason)
    end
end
