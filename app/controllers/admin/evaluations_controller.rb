class Admin::EvaluationsController < ApplicationController
  before_action :set_admin_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /admin/evaluations
  # GET /admin/evaluations.json
  def index
    @admin_evaluations = Admin::Evaluation.all
  end

  # GET /admin/evaluations/1
  # GET /admin/evaluations/1.json
  def show
  end

  # GET /admin/evaluations/new
  def new
    @admin_evaluation = Admin::Evaluation.new
  end

  # GET /admin/evaluations/1/edit
  def edit
  end

  # POST /admin/evaluations
  # POST /admin/evaluations.json
  def create
    @admin_evaluation = Admin::Evaluation.new(admin_evaluation_params)

    respond_to do |format|
      if @admin_evaluation.save
        format.html { redirect_to @admin_evaluation, notice: 'Evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @admin_evaluation }
      else
        format.html { render :new }
        format.json { render json: @admin_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/evaluations/1
  # PATCH/PUT /admin/evaluations/1.json
  def update
    respond_to do |format|
      if @admin_evaluation.update(admin_evaluation_params)
        format.html { redirect_to @admin_evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @admin_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/evaluations/1
  # DELETE /admin/evaluations/1.json
  def destroy
    @admin_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to admin_evaluations_url, notice: 'Evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_evaluation
      @admin_evaluation = Admin::Evaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_evaluation_params
      params.require(:admin_evaluation).permit(:title, :description)
    end
end
