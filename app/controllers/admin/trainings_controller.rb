class Admin::TrainingsController < ApplicationController
  before_action :set_admin_training, only: [:show, :edit, :update, :destroy]

  # GET /admin/trainings
  # GET /admin/trainings.json
  def index
    @admin_trainings = Admin::Training.all
  end

  # GET /admin/trainings/1
  # GET /admin/trainings/1.json
  def show
  end

  # GET /admin/trainings/new
  def new
    @admin_training = Admin::Training.new
  end

  # GET /admin/trainings/1/edit
  def edit
  end

  # POST /admin/trainings
  # POST /admin/trainings.json
  def create
    @admin_training = Admin::Training.new(admin_training_params)

    respond_to do |format|
      if @admin_training.save
        format.html { redirect_to @admin_training, notice: 'Training was successfully created.' }
        format.json { render :show, status: :created, location: @admin_training }
      else
        format.html { render :new }
        format.json { render json: @admin_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/trainings/1
  # PATCH/PUT /admin/trainings/1.json
  def update
    respond_to do |format|
      if @admin_training.update(admin_training_params)
        format.html { redirect_to @admin_training, notice: 'Training was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_training }
      else
        format.html { render :edit }
        format.json { render json: @admin_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/trainings/1
  # DELETE /admin/trainings/1.json
  def destroy
    @admin_training.destroy
    respond_to do |format|
      format.html { redirect_to admin_trainings_url, notice: 'Training was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_training
      @admin_training = Admin::Training.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_training_params
      params.require(:admin_training).permit(:admin_employee_id, :training_type, :training_subject, :nature, :title, :admin_trainer_id)
    end
end
