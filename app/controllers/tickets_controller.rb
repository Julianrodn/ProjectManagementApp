class TicketsController < ApplicationController
  before_action :set_project
  before_action :set_story
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = @story.tickets
  end

  def show
  end

  def new
    @ticket = @story.tickets.build
  end

  def edit
  end

  def create
    @ticket = @story.tickets.new(ticket_params)

    ActiveRecord::Base.transaction do
      @ticket.save!
      redirect_to project_story_path(@project, @story), notice: 'Ticket created successfully.'
    rescue ActiveRecord::RecordInvalid
      @story.destroy
      redirect_to new_project_story_path(@project), alert: 'Ticket creation failed. Please try again.'
    end
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to project_story_ticket_path(@project, @story, @ticket), notice: 'Ticket actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    puts @ticket.id # Agrega este puts para verificar si el id está llegando correctamente
    @ticket.destroy
    redirect_to project_story_path(@project, @story), notice: 'Ticket eliminado exitosamente.'
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_story
    @story = @project.stories.find(params[:story_id])
  end

  def set_ticket
    @ticket = @story.tickets.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:name, :description, :status)
  end
end

