class Admin::EventsController < Admin::AdminController
  before_action :set_admin_event, only: [:show, :edit, :update, :destroy]

  def index
    @admin_events = Admin::Event.all
  end

  def show
  end

  def new
    @admin_event = Admin::Event.new
  end

  def edit
  end

  def create
    @admin_event = Admin::Event.new(admin_event_params)
    if @admin_event.save
      flash[:success] = "Department successfully created"
      redirect_to @admin_event
    else
      render 'new'
    end
  end

  def update
      if @admin_event.update(admin_event_params)
        flash[:success] = "Department successfully updated"
        redirect_to @admin_event
      else
        render :edit 
      end
  end

  def destroy
    @admin_event.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_events_url
  end

  private

    def set_admin_event
      @admin_event = Admin::Event.find(params[:id])
    end

    def admin_event_params
      params.require(:admin_event).permit(:title, :starttime, :endtime, :all_day, :description)
    end
end
