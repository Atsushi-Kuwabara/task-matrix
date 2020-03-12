class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to root_path, notice: 'タスクを作成しました！'

  end

  private

  def task_params
    params.require(:task).permit(:name, :content, :image, :importance, :urgency, :status)
  end

end
