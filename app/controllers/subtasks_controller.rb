class SubtasksController < ApplicationController
    before_action :set_task

    def new
     @subtask = @task.subtasks.new 
    end
    
    def set_task
        @task = Task.find (params[:task_id])
    end 

    def create
        @subtask = @task.subtasks.new(subtask_params)
        if @subtask.save
            redirect_to task_path(@task)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def subtask_params
        params.required(:subtask).permit(:user_story, :story_points, :status, :task_id)
    end

end
