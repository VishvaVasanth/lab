class TasksController < ApplicationController
  before_action :set_project
  before_action :set_task, only: [:edit, :update, :destroy]

  def new
    @task = @project.tasks.new(status: params[:status])
  end

  def create
    @task = @project.tasks.new(task_params)
    if @task.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to @project
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_task
    @task = @project.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :status)
  end
end