class Admin::TicketsController < ApplicationController
  before_action :set_admin_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @admin_tickets = Admin::Ticket.all
  end

  def show
  end

  def new
    @admin_ticket = Admin::Ticket.new
  end

  def edit
  end

  def create
    @admin_ticket = Admin::Ticket.new(admin_ticket_params)

      if @admin_ticket.save
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_ticket.update(admin_ticket_params)
        redirect_to action: "index"
      else
        render :edit 
      end
  end

  def destroy
    @admin_ticket.destroy
    redirect_to admin_tickets_url
  end

  private

    def set_admin_ticket
      @admin_ticket = Admin::Ticket.find(params[:id])
    end

    def admin_ticket_params
      params.require(:admin_ticket).permit(:admin_employee_id, :subject, :message)
    end
end
