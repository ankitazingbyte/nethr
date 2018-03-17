class Admin::LeavesController < ApplicationController
  before_action :set_admin_leafe, only: [:show, :edit, :update, :destroy]

  # GET /admin/leaves
  # GET /admin/leaves.json
  def index
    @admin_leaves = Admin::Leave.all
  end

  # GET /admin/leaves/1
  # GET /admin/leaves/1.json
  def show
  end

  # GET /admin/leaves/new
  def new
    @admin_leafe = Admin::Leave.new
  end

  # GET /admin/leaves/1/edit
  def edit
  end

  # POST /admin/leaves
  # POST /admin/leaves.json
  def create
    @admin_leafe = Admin::Leave.new(admin_leafe_params)

    respond_to do |format|
      if @admin_leafe.save
        format.html { redirect_to @admin_leafe, notice: 'Leave was successfully created.' }
        format.json { render :show, status: :created, location: @admin_leafe }
      else
        format.html { render :new }
        format.json { render json: @admin_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/leaves/1
  # PATCH/PUT /admin/leaves/1.json
  def update
    respond_to do |format|
      if @admin_leafe.update(admin_leafe_params)
        format.html { redirect_to @admin_leafe, notice: 'Leave was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_leafe }
      else
        format.html { render :edit }
        format.json { render json: @admin_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/leaves/1
  # DELETE /admin/leaves/1.json
  def destroy
    @admin_leafe.destroy
    respond_to do |format|
      format.html { redirect_to admin_leaves_url, notice: 'Leave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_leafe
      @admin_leafe = Admin::Leave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_leafe_params
      params.require(:admin_leafe).permit(:employee_id, :leave_type, :leave_from, :leave_to, :status, :reason)
    end
end
