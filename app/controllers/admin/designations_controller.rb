class Admin::DesignationsController < Admin::AdminController
  before_action :set_admin_designation, only: [:show, :edit, :update, :destroy]

  def index
    @admin_designations = Admin::Designation.all
  end

  def show
  end

  def new
    @admin_designation = Admin::Designation.new
    @admin_departments = Admin::Department.all.map{|d| [ d.name, d.id ] }
  end

  def edit
  end

  def create
    @admin_designation = Admin::Designation.new(admin_designation_params)

    if @admin_designation.save
      flash[:success] = "Department successfully created"
      redirect_to action: "index"
    else
       render 'new' 
    end
  end

  def update
    if @admin_designation.update(admin_designation_params)
      flash[:success] = "Department successfully updated"
      redirect_to @admin_designation
    else
      render 'edit'
    end
  end

  def destroy
    @admin_designation.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_designations_url
  end

  private
 
    def set_admin_designation
      @admin_designation = Admin::Designation.find(params[:id])
    end

    def admin_designation_params
      params.require(:admin_designation).permit(:name, :admin_department_id)
    end
end
