class Admin::AssessmentsController < Admin::AdminController
  before_action :set_admin_assessment, only: [:show, :edit, :update, :destroy]

  def index
    @admin_assessments = Admin::Assessment.all
  end

  def show
  end

  def new
    @admin_assessment = Admin::Assessment.new
  end

  def edit
  end

  def create
    @admin_assessment = Admin::Assessment.new(admin_assessment_params)

      if @admin_assessment.save
        flash[:success] = "Department successfully deleted"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_assessment.update(admin_assessment_params)
        flash[:success] = "Department successfully updated"
        redirect_to action: "index"
      else
        render 'edit'
      end
  end

  def destroy
    @admin_assessment.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_assessments_url
  end

  private

    def set_admin_assessment
      @admin_assessment = Admin::Assessment.find(params[:id])
    end
    
    def admin_assessment_params
      params.require(:admin_assessment).permit(:admin_department_id, :training_type, :training_subject, :nature_of_training, :training_title, :admin_employee_id, :training_reason, :admin_trainer_id, :location, :start_date, :end_date, :training_cost, :travel_cost, :status, :description)
    end
end
