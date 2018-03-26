class Admin::NoticesController < ApplicationController
  before_action :set_admin_notice, only: [:show, :edit, :update, :destroy]

  def index
    @admin_notices = Admin::Notice.all
  end

  def show
  end

  def new
    @admin_notice = Admin::Notice.new
  end

  def edit
  end


  def create
    @admin_notice = Admin::Notice.new(admin_notice_params)

    if @admin_notice.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    if @admin_notice.update(admin_notice_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @admin_notice.destroy
    redirect_to admin_notices_url
  end

  private

    def set_admin_notice
      @admin_notice = Admin::Notice.find(params[:id])
    end

    def admin_notice_params
      params.require(:admin_notice).permit(:title, :status, :description)
    end
end
