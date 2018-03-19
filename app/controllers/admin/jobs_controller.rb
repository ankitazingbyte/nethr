class Admin::JobsController < Admin::AdminController
  before_action :set_admin_job, only: [:show, :edit, :update, :destroy]

  # GET /admin/jobs
  # GET /admin/jobs.json
  def index
    @admin_jobs = Admin::Job.all
  end

  # GET /admin/jobs/1
  # GET /admin/jobs/1.json
  def show
  end

  # GET /admin/jobs/new
  def new
    @admin_job = Admin::Job.new
  end

  # GET /admin/jobs/1/edit
  def edit
  end

  # POST /admin/jobs
  # POST /admin/jobs.json
  def create
    @admin_job = Admin::Job.new(admin_job_params)

    respond_to do |format|
      if @admin_job.save
        format.html { redirect_to @admin_job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @admin_job }
      else
        format.html { render :new }
        format.json { render json: @admin_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/jobs/1
  # PATCH/PUT /admin/jobs/1.json
  def update
    respond_to do |format|
      if @admin_job.update(admin_job_params)
        format.html { redirect_to @admin_job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_job }
      else
        format.html { render :edit }
        format.json { render json: @admin_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/jobs/1
  # DELETE /admin/jobs/1.json
  def destroy
    @admin_job.destroy
    respond_to do |format|
      format.html { redirect_to admin_jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_job
      @admin_job = Admin::Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_job_params
      params.require(:admin_job).permit(:designation_id, :number_of_post, :job_type, :experience, :age, :job_location, :salary, :post_date, :last_date_to_apply, :close_date, :status, :short_description, :description)
    end
end
