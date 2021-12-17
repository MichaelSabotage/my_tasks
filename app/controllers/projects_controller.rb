class ProjectsController < ApplicationController
  def index
    @projects = Project.includes(:todos).all
    render json:  @projects.as_json(include: {todos: {only: [:id, :text, :isCompleted]}}, only: [:id, :title])            
  end
end
