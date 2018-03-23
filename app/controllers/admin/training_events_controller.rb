class Admin::TrainingEventsController < ApplicationController
  before_action :set_admin_training_event, only: [:show, :edit, :update, :destroy]

  # GET /admin/training_events
  # GET /admin/training_events.json
  def index
    @admin_training_events = Admin::TrainingEvent.all
  end

  # GET /admin/training_events/1
  # GET /admin/training_events/1.json
  def show
  end

  # GET /admin/training_events/new
  def new
    @admin_training_event = Admin::TrainingEvent.new
  end

  # GET /admin/training_events/1/edit
  def edit
  end

  # POST /admin/training_events
  # POST /admin/training_events.json
  def create
    @admin_training_event = Admin::TrainingEvent.new(admin_training_event_params)

    respond_to do |format|
      if @admin_training_event.save
        format.html { redirect_to @admin_training_event, notice: 'Training event was successfully created.' }
        format.json { render :show, status: :created, location: @admin_training_event }
      else
        format.html { render :new }
        format.json { render json: @admin_training_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/training_events/1
  # PATCH/PUT /admin/training_events/1.json
  def update
    respond_to do |format|
      if @admin_training_event.update(admin_training_event_params)
        format.html { redirect_to @admin_training_event, notice: 'Training event was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_training_event }
      else
        format.html { render :edit }
        format.json { render json: @admin_training_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/training_events/1
  # DELETE /admin/training_events/1.json
  def destroy
    @admin_training_event.destroy
    respond_to do |format|
      format.html { redirect_to admin_training_events_url, notice: 'Training event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_training_event
      @admin_training_event = Admin::TrainingEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_training_event_params
      params.require(:admin_training_event).permit(:training_type, :subject, :nature_of_training, :title, :location, :sponsored_by, :organized_by, :training_from, :training_to, :admin_employee_id, :admin_trainer_id, :status)
    end
end