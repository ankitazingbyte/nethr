class Admin::TrainingEventsController < Admin::AdminController
  before_action :set_admin_training_event, only: [:show, :edit, :update, :destroy]

  def index
    @admin_training_events = Admin::TrainingEvent.all
  end

  def show
  end

  def new
    @admin_training_event = Admin::TrainingEvent.new
  end

  def edit
  end

  def create
    @admin_training_event = Admin::TrainingEvent.new(admin_training_event_params)

      if @admin_training_event.save
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_training_event.update(admin_training_event_params)
        redirect_to action: "index"
      else
        render :edit
      end
  end

  def destroy
    @admin_training_event.destroy
      redirect_to admin_training_events_url
  end

  private

    def set_admin_training_event
      @admin_training_event = Admin::TrainingEvent.find(params[:id])
    end

    def admin_training_event_params
      params.require(:admin_training_event).permit(:training_type, :subject, :nature_of_training, :title, :location, :sponsored_by, :organized_by, :training_from, :training_to, :admin_employee_id, :admin_trainer_id, :status)
    end
end
