class Admin::TrainingsController < ApplicationController
  before_action :set_admin_training, only: [:show, :edit, :update, :destroy]

  def index
    @admin_trainings = Admin::Training.all
  end

  def show
  end

  def new
    @admin_training = Admin::Training.new
  end

  def edit
  end

  def create
    @admin_training = Admin::Training.new(admin_training_params)

      if @admin_training.save
        redirect_to @admin_training
      else
        render 'new'
      end
  end

  def update
      if @admin_training.update(admin_training_params)
       redirect_to @admin_training
      else
       render 'edit '
      end
  end

  # DELETE /admin/trainings/1
  # DELETE /admin/trainings/1.json
  def destroy
    @admin_training.destroy
     redirect_to admin_trainings_url
  end

  private

    def set_admin_training
      @admin_training = Admin::Training.find(params[:id])
    end

    def admin_training_params
      params.require(:admin_training).permit(:admin_employee_id, :training_type, :training_subject, :nature, :title, :admin_trainer_id)
    end
end
