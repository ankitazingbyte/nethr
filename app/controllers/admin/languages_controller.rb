class Admin::LanguagesController < Admin::AdminController
  before_action :set_admin_language, only: [:show, :edit, :update, :destroy]

  def index
    @admin_languages = Admin::Language.all
  end

  def show
  end

  def new
    @admin_language = Admin::Language.new
  end

  def edit
  end

  def create
    @admin_language = Admin::Language.new(admin_language_params)
      if @admin_language.save
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new' 
      end
  end

  def update
      if @admin_language.update(admin_language_params)
        flash[:success] = "Department successfully updated"
        redirect_to @admin_language
      else
        render 'edit' 
      end
  end

  def destroy
    @admin_language.destroy
    flash[:success] = "Department successfully deleted"
      redirect_to admin_languages_url
  end

  private

    def set_admin_language
      @admin_language = Admin::Language.find(params[:id])
    end

    def admin_language_params
      params.require(:admin_language).permit(:name, :status, :image)
    end
end
