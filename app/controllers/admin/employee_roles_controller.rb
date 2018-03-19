class Admin::EmployeeRolesController < Admin::AdminController
  before_action :set_admin_employee_role, only: [:show, :edit, :update, :destroy]

  # GET /admin/employee_roles
  # GET /admin/employee_roles.json
  def index
    @admin_employee_roles = Admin::EmployeeRole.all
  end

  # GET /admin/employee_roles/1
  # GET /admin/employee_roles/1.json
  def show
  end

  # GET /admin/employee_roles/new
  def new
    @admin_employee_role = Admin::EmployeeRole.new
  end

  # GET /admin/employee_roles/1/edit
  def edit
  end

  # POST /admin/employee_roles
  # POST /admin/employee_roles.json
  def create
    @admin_employee_role = Admin::EmployeeRole.new(admin_employee_role_params)

    respond_to do |format|
      if @admin_employee_role.save
        format.html { redirect_to @admin_employee_role, notice: 'Employee role was successfully created.' }
        format.json { render :show, status: :created, location: @admin_employee_role }
      else
        format.html { render :new }
        format.json { render json: @admin_employee_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/employee_roles/1
  # PATCH/PUT /admin/employee_roles/1.json
  def update
    respond_to do |format|
      if @admin_employee_role.update(admin_employee_role_params)
        format.html { redirect_to @admin_employee_role, notice: 'Employee role was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_employee_role }
      else
        format.html { render :edit }
        format.json { render json: @admin_employee_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/employee_roles/1
  # DELETE /admin/employee_roles/1.json
  def destroy
    @admin_employee_role.destroy
    respond_to do |format|
      format.html { redirect_to admin_employee_roles_url, notice: 'Employee role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_employee_role
      @admin_employee_role = Admin::EmployeeRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_employee_role_params
      params.require(:admin_employee_role).permit(:name, :status)
    end
end
