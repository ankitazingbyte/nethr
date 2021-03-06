class Admin::TaskFilesController < Admin::AdminController
  before_action :set_admin_task_file, only: [:show, :edit, :update, :destroy]

  def index
    @admin_task_files = Admin::TaskFile.all
  end

  def show
  end

  def new
    @admin_task_file = Admin::TaskFile.new
  end

  def edit
  end

  def create
    @admin_task_file = Admin::TaskFile.new(admin_task_file_params)
    flash[:success] = "Department successfully created"
      if @admin_task_file.save
        redirect_to @admin_task_file
      else
        render 'new' 
      end
  end

  def update
    if @admin_task_file.update(admin_task_file_params)
      flash[:success] = "Department successfully updated"
      redirect_to @admin_task_file
    else
      render 'edit' 
    end
  end

  def destroy
    @admin_task_file.destroy
    flash[:success] = "Department successfully deleted"
      redirect_to admin_task_file(@admin_task_file)
  end

  private

    def set_admin_task_file
      @admin_task_file = Admin::TaskFile.find(params[:id])
    end

    def admin_task_file_params
      params.require(:admin_task_file).permit(:attachment, :title, :admin_employee_id)
    end
end
