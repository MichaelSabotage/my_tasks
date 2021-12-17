class TodosController < ApplicationController
    def update
        @todo = Todo.find(params[:id])
        @todo.update(isCompleted: "true")
        render json: @todo.as_json
    end

    def create
        @project = Project.find_or_create_by(params.permit(:title))
        @todo = Todo.create!(text: params[:text], project_id: @project.id)
        render json: @todo.as_json
    end
end
