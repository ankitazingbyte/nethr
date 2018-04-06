class Admin::TrainersController < Admin::AdminController
  before_action :set_admin_trainer, only: [:show, :edit, :update, :destroy]

  def index
    @admin_trainers = Admin::Trainer.all
  end

  def show
  end

  def new
    @admin_trainer = Admin::Trainer.new
  end

  def edit
  end

  def create
    @admin_trainer = Admin::Trainer.new(admin_trainer_params)

      if @admin_trainer.save
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_trainer.update(admin_trainer_params)
        flash[:success] = "Department successfully updated"
        redirect_to action: "index"
      else
        render 'edit'
      end
  end

  def destroy
    @admin_trainer.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_trainers_url
  end

  private

    def set_admin_trainer
      @admin_trainer = Admin::Trainer.find(params[:id])
    end

    def admin_trainer_params
      params.require(:admin_trainer).permit(:first_name, :lastname, :designation, :organization, :address, :city, :state, :zip_code, :country, :email, :phone, :trainer_expertise)
    end
end
