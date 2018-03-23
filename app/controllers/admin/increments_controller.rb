class Admin::IncrementsController < ApplicationController
  before_action :set_admin_increment, only: [:show, :edit, :update, :destroy]

  # GET /admin/increments
  # GET /admin/increments.json
  def index
    @admin_increments = Admin::Increment.all
  end

  # GET /admin/increments/1
  # GET /admin/increments/1.json
  def show
  end

  # GET /admin/increments/new
  def new
    @admin_increment = Admin::Increment.new
  end

  # GET /admin/increments/1/edit
  def edit
  end

  # POST /admin/increments
  # POST /admin/increments.json
  def create
    @admin_increment = Admin::Increment.new(admin_increment_params)

    respond_to do |format|
      if @admin_increment.save
        format.html { redirect_to @admin_increment, notice: 'Increment was successfully created.' }
        format.json { render :show, status: :created, location: @admin_increment }
      else
        format.html { render :new }
        format.json { render json: @admin_increment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/increments/1
  # PATCH/PUT /admin/increments/1.json
  def update
    respond_to do |format|
      if @admin_increment.update(admin_increment_params)
        format.html { redirect_to @admin_increment, notice: 'Increment was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_increment }
      else
        format.html { render :edit }
        format.json { render json: @admin_increment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/increments/1
  # DELETE /admin/increments/1.json
  def destroy
    @admin_increment.destroy
    respond_to do |format|
      format.html { redirect_to admin_increments_url, notice: 'Increment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_increment
      @admin_increment = Admin::Increment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_increment_params
      params.require(:admin_increment).permit(:admin_employee_id, :admin_designation_id, :current_salary, :increment_salary)
    end
end
