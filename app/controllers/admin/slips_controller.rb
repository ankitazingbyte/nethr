class Admin::SlipsController < ApplicationController
  before_action :set_admin_slip, only: [:show, :edit, :update, :destroy]

  # GET /admin/slips
  # GET /admin/slips.json
  def index
    @admin_slips = Admin::Slip.all
  end

  # GET /admin/slips/1
  # GET /admin/slips/1.json
  def show
  end

  # GET /admin/slips/new
  def new
    @admin_slip = Admin::Slip.new
  end

  # GET /admin/slips/1/edit
  def edit
  end

  # POST /admin/slips
  # POST /admin/slips.json
  def create
    @admin_slip = Admin::Slip.new(admin_slip_params)

    respond_to do |format|
      if @admin_slip.save
        format.html { redirect_to @admin_slip, notice: 'Slip was successfully created.' }
        format.json { render :show, status: :created, location: @admin_slip }
      else
        format.html { render :new }
        format.json { render json: @admin_slip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/slips/1
  # PATCH/PUT /admin/slips/1.json
  def update
    respond_to do |format|
      if @admin_slip.update(admin_slip_params)
        format.html { redirect_to @admin_slip, notice: 'Slip was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_slip }
      else
        format.html { render :edit }
        format.json { render json: @admin_slip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/slips/1
  # DELETE /admin/slips/1.json
  def destroy
    @admin_slip.destroy
    respond_to do |format|
      format.html { redirect_to admin_slips_url, notice: 'Slip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_slip
      @admin_slip = Admin::Slip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_slip_params
      params.require(:admin_slip).permit(:admin_employee_id, :admin_department_id, :admin_designation_id, :basic_salary, :payment_by, :tax, :provident_fund, :loan, :Leave_deduction, :grand_total)
    end
end
