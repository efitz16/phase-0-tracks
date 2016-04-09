class TodoList
	def initialize(arr)
		@to_do_list = arr
	end

	def get_items
		@to_do_list
	end

	def add_item(new_task)
		@to_do_list.push(new_task)
	end

	def delete_item(task_to_delete)
		@to_do_list.delete_at(@to_do_list.index(task_to_delete))
		@to_do_list
	end

	def get_item(ind)
		@to_do_list[ind]
	end
end