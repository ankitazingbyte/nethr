class Admin::JobsController < Admin::AdminController
  before_action :set_admin_job, only: [:show, :edit, :update, :destroy]

  def index
    @admin_jobs = Admin::Job.all
  end

  def show
  end

  def new
    @admin_job = Admin::Job.new
  end


  def edit
  end

  def create
    @admin_job = Admin::Job.new(admin_job_params)
      if @admin_job.save
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new '
      end
  end

  def update
      if @admin_job.update(admin_job_params)
        flash[:success] = "Department successfully updated"
        redirect_to action: "index"
      else
        render 'edit' 
      end
  end

  def destroy
    @admin_job.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_jobs_url
  end

  private

    def set_admin_job
      @admin_job = Admin::Job.find(params[:id])
    end

    def admin_job_params
      params.require(:admin_job).permit(:admin_designation_id, :number_of_post, :job_type, :experience, :age, :job_location, :salary, :post_date, :last_date_to_apply, :close_date, :status, :short_description, :description)
    end
end
