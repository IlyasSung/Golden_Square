require "todolist"

RSpec.describe "todolist class" do
    it "Check if class is instantiated" do
        todolist = ToDoList.new()
        result = todolist.list()
        expect(result).to eq []
    end
    it "Check add method" do
        todolist = ToDoList.new()
        todolist.add("Wash up")
        todolist.add("Laundry")
        result = todolist.list()
        expect(result).to eq ["Wash up", "Laundry"]
    end
    it "Check complete method" do
        todolist = ToDoList.new()
        todolist.add("Wash up")
        todolist.complete("Wash up")
        result = todolist.list()
        expect(result).to eq []
    end
end

