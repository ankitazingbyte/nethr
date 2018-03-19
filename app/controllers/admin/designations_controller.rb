class Admin::DesignationsController < Admin::AdminController
  before_action :set_admin_designation, only: [:show, :edit, :update, :destroy]

  # GET /admin/designations
  # GET /admin/designations.json
  def index
    @admin_designations = Admin::Designation.all
  end

  # GET /admin/designations/1
  # GET /admin/designations/1.json
  def show
  end

  # GET /admin/designations/new
  def new
    @admin_designation = Admin::Designation.new
  end

  # GET /admin/designations/1/edit
  def edit
  end

  # POST /admin/designations
  # POST /admin/designations.json
  def create
    @admin_designation = Admin::Designation.new(admin_designation_params)

    respond_to do |format|
      if @admin_designation.save
        format.html { redirect_to @admin_designation, notice: 'Designation was successfully created.' }
        format.json { render :show, status: :created, location: @admin_designation }
      else
        format.html { render :new }
        format.json { render json: @admin_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/designations/1
  # PATCH/PUT /admin/designations/1.json
  def update
    respond_to do |format|
      if @admin_designation.update(admin_designation_params)
        format.html { redirect_to @admin_designation, notice: 'Designation was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_designation }
      else
        format.html { render :edit }
        format.json { render json: @admin_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/designations/1
  # DELETE /admin/designations/1.json
  def destroy
    @admin_designation.destroy
    respond_to do |format|
      format.html { redirect_to admin_designations_url, notice: 'Designation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_designation
      @admin_designation = Admin::Designation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_designation_params
      params.require(:admin_designation).permit(:name, :department_id)
    end
end
