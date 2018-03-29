class Admin::EvaluationsController < ApplicationController
  before_action :set_admin_evaluation, only: [:show, :edit, :update, :destroy]

  def index
    @admin_evaluations = Admin::Evaluation.all
  end

  def show
  end

  def new
    @admin_evaluation = Admin::Evaluation.new
  end

  def edit
  end

  def create
    @admin_evaluation = Admin::Evaluation.new(admin_evaluation_params)
      if @admin_evaluation.save
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_evaluation.update(admin_evaluation_params)
        redirect_to action: "index"
      else
        render 'edit' 
      end
  end

  def destroy
    @admin_evaluation.destroy
    redirect_to admin_evaluations_url
  end

  private
   
    def set_admin_evaluation
      @admin_evaluation = Admin::Evaluation.find(params[:id])
    end

    def admin_evaluation_params
      params.require(:admin_evaluation).permit(:title, :description)
    end
end
