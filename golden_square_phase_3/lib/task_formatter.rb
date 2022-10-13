class TaskFormatter
    def initialize(task) # task is an instance of Task
        @tasks = task
    end
  
    def format
      # Returns the task formatted as a string.
      # If the task is not complete, the format is:
      # - [ ] Task title
      # If the task is complete, the format is:
      # - [x] Task title
      if @tasks.complete == true
        return "- [x] " + @tasks.title
      else
        return "- [ ] " + @tasks.title
      end
    end
end