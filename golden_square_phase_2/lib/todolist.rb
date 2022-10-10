=begin
1. Describe the problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the class interface

The name of the class.
The design of its initializer and the parameters it takes.
The design of its public methods, including:
    Their names and purposes.
    What parameters they take and the data types.
    What they return and that data type.
    Any other side effects they might have.

class ToDoList
    def initialize
        tasks = []
    end
    def add(task)
        tasks.push(task)
    end
    def list
        p tasks
    end
    def complete(task)
        tasks.remove(task)
    end
end

3. Create examples as tests

todolist = ToDoList.new
todolist.list() => []

todolist = ToDoList.new
todolist.add("Wash up")
todolist.add("Laundry")
todolist.list() => ["Wash up, Laundry"]

todolist = ToDoList.new
todolist.add("Wash up")
todolist.complete("Wash up")
todolist.list() => []
=end

class ToDoList
  def initialize
    @tasks = []
  end
  def list
    return @tasks
  end
  def add(task)
    @tasks.push(task)
  end
  def complete(task)
    @tasks.delete(task)
  end
end