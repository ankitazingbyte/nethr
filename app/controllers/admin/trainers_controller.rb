class Admin::TrainersController < ApplicationController
  before_action :set_admin_trainer, only: [:show, :edit, :update, :destroy]

  # GET /admin/trainers
  # GET /admin/trainers.json
  def index
    @admin_trainers = Admin::Trainer.all
  end

  # GET /admin/trainers/1
  # GET /admin/trainers/1.json
  def show
  end

  # GET /admin/trainers/new
  def new
    @admin_trainer = Admin::Trainer.new
  end

  # GET /admin/trainers/1/edit
  def edit
  end

  # POST /admin/trainers
  # POST /admin/trainers.json
  def create
    @admin_trainer = Admin::Trainer.new(admin_trainer_params)

    respond_to do |format|
      if @admin_trainer.save
        format.html { redirect_to @admin_trainer, notice: 'Trainer was successfully created.' }
        format.json { render :show, status: :created, location: @admin_trainer }
      else
        format.html { render :new }
        format.json { render json: @admin_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/trainers/1
  # PATCH/PUT /admin/trainers/1.json
  def update
    respond_to do |format|
      if @admin_trainer.update(admin_trainer_params)
        format.html { redirect_to @admin_trainer, notice: 'Trainer was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_trainer }
      else
        format.html { render :edit }
        format.json { render json: @admin_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/trainers/1
  # DELETE /admin/trainers/1.json
  def destroy
    @admin_trainer.destroy
    respond_to do |format|
      format.html { redirect_to admin_trainers_url, notice: 'Trainer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_trainer
      @admin_trainer = Admin::Trainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_trainer_params
      params.require(:admin_trainer).permit(:first_name, :lastname, :designation, :organization, :address, :city, :state, :zip_code, :country, :email, :phone, :trainer_expertise)
    end
end
