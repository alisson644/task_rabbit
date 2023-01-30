class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)

    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :description, :company, :url)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
