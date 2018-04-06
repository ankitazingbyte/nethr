class Admin::TrainingsController < Admin::AdminController
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
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_training.update(admin_training_params)
        flash[:success] = "Department successfully updated"
       redirect_to action: "index"
      else
       render 'edit '
      end
  end

  def destroy
    @admin_training.destroy
    flash[:success] = "Department successfully deleted"
     redirect_to admin_trainings_url
  end

  private

    def set_admin_training
      @admin_training = Admin::Training.find(params[:id])
    end

    def admin_training_params
      params.require(:admin_training).permit(:admin_employee_id, :training_from, :training_to, :location , :sponsored_by, :organized_by, :description, :training_type, :training_subject, :nature, :title, :admin_trainer_id)
    end
end
