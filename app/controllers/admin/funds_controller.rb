class Admin::FundsController < ApplicationController
  before_action :set_admin_fund, only: [:show, :edit, :update, :destroy]

  # GET /admin/funds
  # GET /admin/funds.json
  def index
    @admin_funds = Admin::Fund.all
  end

  # GET /admin/funds/1
  # GET /admin/funds/1.json
  def show
  end

  # GET /admin/funds/new
  def new
    @admin_fund = Admin::Fund.new
  end

  # GET /admin/funds/1/edit
  def edit
  end

  # POST /admin/funds
  # POST /admin/funds.json
  def create
    @admin_fund = Admin::Fund.new(admin_fund_params)

    respond_to do |format|
      if @admin_fund.save
        format.html { redirect_to @admin_fund, notice: 'Fund was successfully created.' }
        format.json { render :show, status: :created, location: @admin_fund }
      else
        format.html { render :new }
        format.json { render json: @admin_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/funds/1
  # PATCH/PUT /admin/funds/1.json
  def update
    respond_to do |format|
      if @admin_fund.update(admin_fund_params)
        format.html { redirect_to @admin_fund, notice: 'Fund was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_fund }
      else
        format.html { render :edit }
        format.json { render json: @admin_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/funds/1
  # DELETE /admin/funds/1.json
  def destroy
    @admin_fund.destroy
    respond_to do |format|
      format.html { redirect_to admin_funds_url, notice: 'Fund was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_fund
      @admin_fund = Admin::Fund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_fund_params
      params.require(:admin_fund).permit(:admin_employee_id, :fund_type, :employee_share, :organization_share, :description)
    end
end
