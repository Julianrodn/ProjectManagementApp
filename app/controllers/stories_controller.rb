class StoriesController < ApplicationController
  before_action :set_project
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @story = @project.stories.new
    @story.tickets.build  # Construir un ticket dentro de la historia
  end

  def create
    @story = @project.stories.new(story_params)

    ActiveRecord::Base.transaction do
      if @story.save
        # Construir el ticket asociado con los parámetros del ticket
        puts "#######################################################################"
        puts "#######################################################################"
        puts "#######################################################################"
        puts "#######################################################################"
        puts ticket_params 
        puts "#######################################################################"
        puts "#######################################################################"
        puts "#######################################################################"
        @ticket = @story.tickets.new(ticket_params)
        
        if @ticket.save
          redirect_to project_story_path(@project, @story), notice: 'Historia y ticket creados con éxito.'
        else
          raise ActiveRecord::Rollback  # Forzar rollback si el ticket no se guarda
        end
      else
        render :new
      end
    end
  rescue ActiveRecord::Rollback
    flash[:alert] = 'Hubo un problema al crear la historia y el ticket.'
    render :new
  end

  def edit
  end

  def update
    if @story.update(story_params)
      redirect_to project_path(@project), notice: 'Historia de usuario actualizada exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @story.tickets.destroy_all
    @story.destroy
    redirect_to project_path(@project), notice: 'Historia de usuario eliminada exitosamente.'
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_story
    @story = @project.stories.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:name, :description)
  end

  def ticket_params
    params.require(:story).require(:tickets).permit(:name, :description, :comments, :status)
  end
end

