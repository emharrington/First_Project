class Todo
    def initialize(task)
        @task = task
    end
  
    def task
        return @task
    end
  
    def mark_done!
        @task + " is done"
    end
  
    def done?
        if @task.include? "done"
            return true
        else
            return false
        end
    end
  end