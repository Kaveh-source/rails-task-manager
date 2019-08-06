class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :add, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_strong_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def update
    @task.update(tasks_strong_params)
    redirect_to tasks_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_strong_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id].to_i)
  end
end


