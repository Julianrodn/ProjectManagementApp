class ProjectsController < ApplicationController
  #before_action :authenticate_user!, only: [:new, :create]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.company = current_user.company # Asumiendo que el proyecto está asociado a la compañía del usuario

    if @project.save
      redirect_to @project, notice: 'Proyecto creado exitosamente.'
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
