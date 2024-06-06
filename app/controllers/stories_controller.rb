class StoriesController < ApplicationController
  before_action :set_project
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @story = @project.stories.new
  end

  def create
    @story = @project.stories.new(story_params)

    ActiveRecord::Base.transaction do
      if @story.save
        redirect_to new_project_story_ticket_path(@project, @story), notice: 'Story created successfully. Please create the first ticket.'
      else
        render :new
      end
    end
  end

  def edit
    @story = Story.find(params[:id])
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
    params.require(:story).permit(:name, :description) # Ajusta los parámetros según tu modelo de datos
  end
end
