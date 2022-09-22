class Tasks
    def initialize
        @list_of_tasks = []
    end

    def todo(task) #task is a string
        fail "Please input a task." if task.empty?
        @list_of_tasks << task
    end

    def completed_tasks(task) #task is a string
        fail "This task doesn't exist." unless @list_of_tasks.include? task
        @list_of_tasks.delete(task)
    end

    def todo_list
        return @list_of_tasks
    end
end