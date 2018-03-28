class Admin::DocumentsController < ApplicationController
  before_action :set_admin_document, only: [:show, :edit, :update, :destroy]

  def index
    @admin_documents = Admin::Document.all
  end

  def show
  end

  def new
    @admin_document = Admin::Document.new
  end


  def edit
  end

  def create
    @admin_document = Admin::Document.new(admin_document_params)

      if @admin_document.save
        redirect_to @admin_document
        render 'new'
      end
  end

  def update
      if @admin_document.update(admin_document_params)
        redirect_to @admin_document
      else
        render 'edit' 
  
    end
  end

  def destroy
    @admin_document.destroy
     redirect_to admin_documents_url
  end

  private
  
    def set_admin_document
      @admin_document = Admin::Document.find(params[:id])
    end

    def admin_document_params
      params.require(:admin_document).permit(:name, :attachment )
    end
end
