class TodoList
    def initialize
        @incomplete_tasks = []
        @complete_tasks = []
        @tasks = []
    end
  
    def add(todo)
        if todo.include? "complete"
            @complete_tasks << todo
        else
            @incomplete_tasks << todo
        end
    end
  
    def incomplete
        return @incomplete_tasks
    end
  
    def complete
        return @complete_tasks
    end
  
    def give_up!
        @incomplete_tasks.each {|task| task.concat(" is complete")}
        @tasks.concat(@incomplete_tasks, @complete_tasks)
        return @tasks
    end
  end
=begin
if string includes "complete" then print as normal
if string doesn't include "complete" then add it on to the end
=end