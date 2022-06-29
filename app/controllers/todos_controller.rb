class TodosController < ApplicationController
  def index
    @instant = Todo.all
  end

  def create
    todo = Todo.new (task_todo)
    if todo.save
      @instant = Todo.all
      render "todos/test_todo"
    end
  end
  

  def delete
    @cancel = Todo.find(params[:id])
    if @cancel.destroy
     @instant = Todo.all
     render "todos/test_todo"
    end
  end

  def update
    id = params[:id]
    todo=Todo.find(id)
    todo.status = true
    if todo.save
    @todo_list = Todo.all
    render "todos/test_todo"
    end
  end

 private
  def task_todo   
    params.require(:todo).permit(:task, :date, :status)
  end

end
