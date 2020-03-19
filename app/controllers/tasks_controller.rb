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
    Task.create(name: task_params[:name], content: task_params[:content], image: task_params[:image],importance: task_params[:importance], urgency: task_params[:urgency], status: task_params[:status], user_id: current_user.id)
    redirect_to root_path, notice: 'タスクを作成しました！'
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:name, :content, :image, :importance, :urgency, :status)
  end
end
