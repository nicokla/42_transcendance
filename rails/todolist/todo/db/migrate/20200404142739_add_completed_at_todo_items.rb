class AddCompletedAtTodoItems < ActiveRecord::Migration[6.0]
	def change
		add_column :todo_items, :completed_at, :datetime
  end
end
