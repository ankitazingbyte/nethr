class Admin::TaxRulesController < Admin::AdminController
  before_action :set_admin_tax_rule, only: [:show, :edit, :update, :destroy]

  def index
    @admin_tax_rules = Admin::TaxRule.all
  end

  def show
  end

  def new
    @admin_tax_rule = Admin::TaxRule.new
  end

  def edit
  end

  def create
    @admin_tax_rule = Admin::TaxRule.new(admin_tax_rule_params)
      if @admin_tax_rule.save
        flash[:success] = "Department successfully created"
        redirect_to @admin_tax_rule
      else
        render "new" 
    end
  end

  def update
      if @admin_tax_rule.update(admin_tax_rule_params)
        flash[:success] = "Department successfully updated"
        redirect_to @admin_tax_rule
      else
        render "edit" 
    end
  end

  def destroy
    @admin_tax_rule.destroy
    flash[:success] = "Department successfully deleted"
      redirect_to admin_tax_rules_url
  end

  private

    def set_admin_tax_rule
      @admin_tax_rule = Admin::TaxRule.find(params[:id])
    end

    def admin_tax_rule_params
      params.require(:admin_tax_rule).permit(:name, :status)
    end
end
