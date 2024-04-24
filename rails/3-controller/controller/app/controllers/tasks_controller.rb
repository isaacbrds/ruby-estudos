class TasksController < ApplicationController
    def index
        set_tasks
        render json: {
            tasks: @tasks
        }
    end

    def show
        set_tasks
        id = params[:id].to_i - 1
        task = @tasks[id]
        render json:{
            task: task
        }
    end

    private

    def set_tasks
        @tasks = ['tarefa 1', 'tarefa 2', 'tarefa 3']
    end
end