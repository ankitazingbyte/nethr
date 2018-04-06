class Admin::EmployeeRolesController < Admin::AdminController
  before_action :set_admin_employee_role, only: [:show, :edit, :update, :destroy]

  def index
    @admin_employee_roles = Admin::EmployeeRole.all
  end

  def show
  end

  def new
    @admin_employee_role = Admin::EmployeeRole.new
  end

  def edit
  end

  def create
    @admin_employee_role = Admin::EmployeeRole.new(admin_employee_role_params)
      if @admin_employee_role.save
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_employee_role.update(admin_employee_role_params)
        flash[:success] = "Department successfully update"
        redirect_to @admin_employee_role
      else
        render 'edit'
      end
  end

  def destroy
    @admin_employee_role.destroy
    flash[:success] = "Department successfully deleted"
      redirect_to admin_employee_roles_url
  end

  private

    def set_admin_employee_role
      @admin_employee_role = Admin::EmployeeRole.find(params[:id])
    end

    def admin_employee_role_params
      params.require(:admin_employee_role).permit(:name, :status)
    end
end
