class Admin::SupportDepartmentsController < ApplicationController
  before_action :set_admin_support_department, only: [:show, :edit, :update, :destroy]

  # GET /admin/support_departments
  # GET /admin/support_departments.json
  def index
    @admin_support_departments = Admin::SupportDepartment.all
  end

  # GET /admin/support_departments/1
  # GET /admin/support_departments/1.json
  def show
  end

  # GET /admin/support_departments/new
  def new
    @admin_support_department = Admin::SupportDepartment.new
  end

  # GET /admin/support_departments/1/edit
  def edit
  end

  # POST /admin/support_departments
  # POST /admin/support_departments.json
  def create
    @admin_support_department = Admin::SupportDepartment.new(admin_support_department_params)

    respond_to do |format|
      if @admin_support_department.save
        format.html { redirect_to @admin_support_department, notice: 'Support department was successfully created.' }
        format.json { render :show, status: :created, location: @admin_support_department }
      else
        format.html { render :new }
        format.json { render json: @admin_support_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/support_departments/1
  # PATCH/PUT /admin/support_departments/1.json
  def update
    respond_to do |format|
      if @admin_support_department.update(admin_support_department_params)
        format.html { redirect_to @admin_support_department, notice: 'Support department was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_support_department }
      else
        format.html { render :edit }
        format.json { render json: @admin_support_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/support_departments/1
  # DELETE /admin/support_departments/1.json
  def destroy
    @admin_support_department.destroy
    respond_to do |format|
      format.html { redirect_to admin_support_departments_url, notice: 'Support department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_support_department
      @admin_support_department = Admin::SupportDepartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_support_department_params
      params.require(:admin_support_department).permit(:name, :email, :show_in_client)
    end
end
