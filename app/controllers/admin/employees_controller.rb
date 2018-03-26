class Admin::EmployeesController < Admin::AdminController
  before_action :set_admin_employee, only: [:show, :edit, :update, :destroy]

  def index
    @admin_employees = Admin::Employee.all
  end


  def show
  end


  def new
    @admin_employee = Admin::Employee.new

  end

  def edit
  end

  def create
    @admin_employee = Admin::Employee.new(admin_employee_params)
      if @admin_employee.save
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_employee.update(admin_employee_params)
        redirect_to action: "index"
      else
        render 'edit'
      end
  end

  def destroy
    @admin_employee.destroy
      redirect_to admin_employees_url
  end

  private

    def set_admin_employee
      @admin_employee = Admin::Employee.find(params[:id])
    end

    def admin_employee_params
      params.require(:admin_employee).permit(:first_name, :last_name, :employee_code, :user_name, :date_0f_join, :date_of_leave, :date_of_birth, :phone, :alternavtive_phone, :status, :persent_address, :permanent_address, :admin_department_id, :admin_designation_id, :gender, :tax_example, user_attributes: [:email, :password, :password_confirmation])
    end
end
