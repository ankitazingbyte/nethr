class Admin::NoticesController < ApplicationController
  before_action :set_admin_notice, only: [:show, :edit, :update, :destroy]

  # GET /admin/notices
  # GET /admin/notices.json
  def index
    @admin_notices = Admin::Notice.all
  end

  # GET /admin/notices/1
  # GET /admin/notices/1.json
  def show
  end

  # GET /admin/notices/new
  def new
    @admin_notice = Admin::Notice.new
  end

  # GET /admin/notices/1/edit
  def edit
  end

  # POST /admin/notices
  # POST /admin/notices.json
  def create
    @admin_notice = Admin::Notice.new(admin_notice_params)

    respond_to do |format|
      if @admin_notice.save
        format.html { redirect_to @admin_notice, notice: 'Notice was successfully created.' }
        format.json { render :show, status: :created, location: @admin_notice }
      else
        format.html { render :new }
        format.json { render json: @admin_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/notices/1
  # PATCH/PUT /admin/notices/1.json
  def update
    respond_to do |format|
      if @admin_notice.update(admin_notice_params)
        format.html { redirect_to @admin_notice, notice: 'Notice was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_notice }
      else
        format.html { render :edit }
        format.json { render json: @admin_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/notices/1
  # DELETE /admin/notices/1.json
  def destroy
    @admin_notice.destroy
    respond_to do |format|
      format.html { redirect_to admin_notices_url, notice: 'Notice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_notice
      @admin_notice = Admin::Notice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_notice_params
      params.require(:admin_notice).permit(:title, :status, :description)
    end
end
