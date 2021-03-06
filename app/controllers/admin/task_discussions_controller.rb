class Admin::TaskDiscussionsController < Admin::AdminController
  before_action :set_admin_task_discussion, only: [:show, :edit, :update, :destroy]

  def index
    @admin_task_discussions = Admin::TaskDiscussion.all
  end

  def show
  end

  def new
    @admin_task_discussion = Admin::TaskDiscussion.new
  end

  def edit
  end

  def create
    @admin_task_discussion = Admin::TaskDiscussion.new(admin_task_discussion_params)
    flash[:success] = "Department successfully created"
      if @admin_task_discussion.save
        redirect_to @admin_task_discussion
      else
        render 'new'
      end
  end

  def update
      if @admin_task_discussion.update(admin_task_discussion_params)
        flash[:success] = "Department successfully updated"
        redirect_to @admin_task_discussion
      else
        render 'edit'
      end
  end

  def destroy
    @admin_task_discussion.destroy
    flash[:success] = "Department successfully deleted"
      redirect_to admin_task_discussions_url

  end

  private

    def set_admin_task_discussion
      @admin_task_discussion = Admin::TaskDiscussion.find(params[:id])
    end

    def admin_task_discussion_params
      params.require(:admin_task_discussion).permit(:comment, :admin_employee_id)
    end
end
