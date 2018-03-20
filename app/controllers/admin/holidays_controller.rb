class Admin::HolidaysController < ApplicationController
  before_action :set_admin_holiday, only: [:show, :edit, :update, :destroy]

  # GET /admin/holidays
  # GET /admin/holidays.json
  def index
    @admin_holidays = Admin::Holiday.all
  end

  # GET /admin/holidays/1
  # GET /admin/holidays/1.json
  def show
  end

  # GET /admin/holidays/new
  def new
    @admin_holiday = Admin::Holiday.new
  end

  # GET /admin/holidays/1/edit
  def edit
  end

  # POST /admin/holidays
  # POST /admin/holidays.json
  def create
    @admin_holiday = Admin::Holiday.new(admin_holiday_params)

    respond_to do |format|
      if @admin_holiday.save
        format.html { redirect_to @admin_holiday, notice: 'Holiday was successfully created.' }
        format.json { render :show, status: :created, location: @admin_holiday }
      else
        format.html { render :new }
        format.json { render json: @admin_holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/holidays/1
  # PATCH/PUT /admin/holidays/1.json
  def update
    respond_to do |format|
      if @admin_holiday.update(admin_holiday_params)
        format.html { redirect_to @admin_holiday, notice: 'Holiday was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_holiday }
      else
        format.html { render :edit }
        format.json { render json: @admin_holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/holidays/1
  # DELETE /admin/holidays/1.json
  def destroy
    @admin_holiday.destroy
    respond_to do |format|
      format.html { redirect_to admin_holidays_url, notice: 'Holiday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_holiday
      @admin_holiday = Admin::Holiday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_holiday_params
      params.require(:admin_holiday).permit(:date, :occasion)
    end
end
