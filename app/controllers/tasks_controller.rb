class TasksController < ApplicationController
  def index
    if user_signed_in?
      @tasks = Task.all.order(params[:sort])
    else 
      redirect_to user_session_path
    end
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
    @task = Task.create(name: task_params[:name], content: task_params[:content], image: task_params[:image],importance_id: task_params[:importance_id], urgency_id: task_params[:urgency_id], status_id: task_params[:status_id], user_id: current_user.id)
    if @task.save
      redirect_to root_path, notice: 'タスクを作成しました！'
    else 
      redirect_to new_task_path, notice: 'タスクを作成できませんでした。'
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
  end

  def update
    if Task.where(user_id: current_user.id, importance_id: task_params[:importance_id], urgency_id: task_params[:urgency_id]).exists?
      redirect_to edit_task_path, notice: '重要度✖️緊急度が同じタスクがすでに存在します。'
    else
      task = Task.find(params[:id])
      task.update(task_params)
      if task.save
        redirect_to root_path, notice: 'タスクを更新しました！'
      else 
        redirect_to edit_task_path, notice: 'タスクを変更できませんでした。'
      end
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :content, :image, :importance_id, :urgency_id, :status_id, :user_id)
  end
end
