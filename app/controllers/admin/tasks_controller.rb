class Admin::TasksController < ApplicationController
  before_action :set_admin_task, only: [:show, :edit, :update, :destroy]

  def index
    @admin_tasks = Admin::Task.all
  end

  def show
    @admin_task_discussions = Admin::TaskDiscussion.all
    @admin_task_files = Admin::TaskFile.all
  end

  def new
    @admin_task = Admin::Task.new
  end

  def edit
  end

  def create
    @admin_task = Admin::Task.new(admin_task_params)
      if @admin_task.save
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_task.update(admin_task_params)
        redirect_to action: "index"
      else
        render 'edit'
      end
  end

  def destroy
    @admin_task.destroy
    redirect_to admin_tasks_url
  end

  private

    def set_admin_task
      @admin_task = Admin::Task.find(params[:id])
    end

    def admin_task_params
      params.require(:admin_task).permit(:title, :assign_to, :start_date, :due_date, :estimated_hour, :progress, :status, :description, :admin_employee_id )
    end
end
