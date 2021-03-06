class Admin::TicketsController < Admin::AdminController
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
        flash[:success] = "Department successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  def update
      if @admin_ticket.update(admin_ticket_params)
        flash[:success] = "Department successfully updated"
        redirect_to action: "index"
      else
        render :edit 
      end
  end

  def destroy
    @admin_ticket.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to admin_tickets_url
  end

  private

    def set_admin_ticket
      @admin_ticket = Admin::Ticket.find(params[:id])
    end

    def admin_ticket_params
      params.require(:admin_ticket).permit(:admin_employee_id, :admin_department_id, :subject, :message, :status)
    end
end
