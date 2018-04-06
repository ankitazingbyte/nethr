class Admin::DepartmentsController < Admin::AdminController
  before_action :set_admin_department, only: [:show, :edit, :update, :destroy]

  def index
    @admin_departments = Admin::Department.all
  end

  def show
  end

  def new
    @admin_department = Admin::Department.new
  end

  def edit
  end

  def create
    @admin_department = Admin::Department.new(admin_department_params)

    if @admin_department.save
      flash[:success] = "Department successfully created"
      redirect_to action: "index"
    else
      render 'new' 
    end
  end

  def update
    if @admin_department.update(admin_department_params)
      flash[:success] = "Department successfully updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @admin_department.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_departments_url
  end

  private

    def set_admin_department
      @admin_department = Admin::Department.find(params[:id])
    end

    def admin_department_params
      params.require(:admin_department).permit(:name)
    end
end
