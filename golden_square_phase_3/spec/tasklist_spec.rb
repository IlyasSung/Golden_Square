require "tasklist"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  it "return all tasks" do
    task_list = TaskList.new
    task1 = double :task
    task_list.add(task1)
    expect(task_list.all).to eq [task1]
  end

  it "all tasks are complete" do
    task_list = TaskList.new
    task_1 = double :track, complete?: true
    task_list.add(task_1)
    expect(task_list.all_complete?).to eq true
  end
end