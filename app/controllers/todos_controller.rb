class TodosController < ApplicationController
  def index
    @instant = Todo.all
  end

  def create
    todo = Todo.new (task_todo)
    if todo.save
      @instant = Todo.all
      redirect_to todos_list_path
    end
  end
  
  def delete
    @cancel = Todo.find(params[:id])
    @cancel.destroy
    @instant = Todo.all
    redirect_to todos_list_path
  end

  def update
    id = params[:id]
    todo = Todo.find(id)
    todo.status = true
    if todo.save
    @todo_list = Todo.all
    redirect_to todos_list_path
    end
  end

  def list
    render "test_todo"
  end
 private
  def task_todo   
    params.require(:todo).permit(:task, :date, :status)
  end

end
