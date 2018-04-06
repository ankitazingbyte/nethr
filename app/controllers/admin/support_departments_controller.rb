class Admin::SupportDepartmentsController < Admin::AdminController
  before_action :set_admin_support_department, only: [:show, :edit, :update, :destroy]

  def index
    @admin_support_departments = Admin::SupportDepartment.all
  end

  def show
  end

  def new
    @admin_support_department = Admin::SupportDepartment.new
  end

  def edit
  end

  def create
    @admin_support_department = Admin::SupportDepartment.new(admin_support_department_params)
      if @admin_support_department.save
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_support_department.update(admin_support_department_params)
        flash[:success] = "Department successfully updated"
        redirect_to action: "index"
      else
        render 'edit'
      end
  end

  def destroy
    @admin_support_department.destroy
    flash[:success] = "Department successfully deleted"
      redirect_to admin_support_departments_url
  end

  private

    def set_admin_support_department
      @admin_support_department = Admin::SupportDepartment.find(params[:id])
    end

    def admin_support_department_params
      params.require(:admin_support_department).permit(:name, :email, :show_in_client)
    end
end
