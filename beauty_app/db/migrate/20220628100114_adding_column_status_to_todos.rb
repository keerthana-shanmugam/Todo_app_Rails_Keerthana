class AddingColumnStatusToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :status, :bool
  end
end
