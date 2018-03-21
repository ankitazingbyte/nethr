class Admin::TasksController < ApplicationController
  before_action :set_admin_task, only: [:show, :edit, :update, :destroy]

  # GET /admin/tasks
  # GET /admin/tasks.json
  def index
    @admin_tasks = Admin::Task.all
  end

  # GET /admin/tasks/1
  # GET /admin/tasks/1.json
  def show
  end

  # GET /admin/tasks/new
  def new
    @admin_task = Admin::Task.new
  end

  # GET /admin/tasks/1/edit
  def edit
  end

  # POST /admin/tasks
  # POST /admin/tasks.json
  def create
    @admin_task = Admin::Task.new(admin_task_params)

    respond_to do |format|
      if @admin_task.save
        format.html { redirect_to @admin_task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @admin_task }
      else
        format.html { render :new }
        format.json { render json: @admin_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/tasks/1
  # PATCH/PUT /admin/tasks/1.json
  def update
    respond_to do |format|
      if @admin_task.update(admin_task_params)
        format.html { redirect_to @admin_task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_task }
      else
        format.html { render :edit }
        format.json { render json: @admin_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/tasks/1
  # DELETE /admin/tasks/1.json
  def destroy
    @admin_task.destroy
    respond_to do |format|
      format.html { redirect_to admin_tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_task
      @admin_task = Admin::Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_task_params
      params.require(:admin_task).permit(:title, :assign_to, :start_date, :due_date, :estimated_hour, :progress, :status, :description)
    end
end
