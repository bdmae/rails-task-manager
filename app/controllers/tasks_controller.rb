class TasksController < ApplicationController

  # THE ROUTE PATHS HAVE TO MATCH THE ACTION NAME IN THE CONTROLLER

  def index # show all tasks
    @tasks = Task.all
  end

  #show one
  def show
    @task = Task.find(params[:id])
  end

  # creating a task view
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
      if @task.save
        redirect_to tasks_path
      else
        render 'new.html.erb'
      end
  end

  # the updates' view
  def edit
    @task = Task.find(params[:id])
  end

  #update action
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path(@task)
    else
      render 'edit_task.html.erb'
    end
  end

  #the destroy action
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end

end
