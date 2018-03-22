class Admin::AssessmentsController < ApplicationController
  before_action :set_admin_assessment, only: [:show, :edit, :update, :destroy]

  # GET /admin/assessments
  # GET /admin/assessments.json
  def index
    @admin_assessments = Admin::Assessment.all
  end

  # GET /admin/assessments/1
  # GET /admin/assessments/1.json
  def show
  end

  # GET /admin/assessments/new
  def new
    @admin_assessment = Admin::Assessment.new
  end

  # GET /admin/assessments/1/edit
  def edit
  end

  # POST /admin/assessments
  # POST /admin/assessments.json
  def create
    @admin_assessment = Admin::Assessment.new(admin_assessment_params)

    respond_to do |format|
      if @admin_assessment.save
        format.html { redirect_to @admin_assessment, notice: 'Assessment was successfully created.' }
        format.json { render :show, status: :created, location: @admin_assessment }
      else
        format.html { render :new }
        format.json { render json: @admin_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/assessments/1
  # PATCH/PUT /admin/assessments/1.json
  def update
    respond_to do |format|
      if @admin_assessment.update(admin_assessment_params)
        format.html { redirect_to @admin_assessment, notice: 'Assessment was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_assessment }
      else
        format.html { render :edit }
        format.json { render json: @admin_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/assessments/1
  # DELETE /admin/assessments/1.json
  def destroy
    @admin_assessment.destroy
    respond_to do |format|
      format.html { redirect_to admin_assessments_url, notice: 'Assessment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_assessment
      @admin_assessment = Admin::Assessment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_assessment_params
      params.require(:admin_assessment).permit(:admin_department_id, :training_type, :training_subject, :nature_of_training, :training_title, :admin_employee_id, :training_reason, :admin_trainer_id, :location, :start_date, :end_date, :training_cost, :travel_cost, :status, :description)
    end
end
