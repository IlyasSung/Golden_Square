require "task_formatter"

RSpec.describe TaskFormatter do
    it "Test" do
        task = double :task, title: "Washing", complete: false
        task_formatter = TaskFormatter.new(task)
        expect(task_formatter.format).to eq "- [ ] Washing"
    end

    it "Test" do
        task = double :task, title: "Washing", complete: true
        task_formatter = TaskFormatter.new(task)
        expect(task_formatter.format).to eq "- [x] Washing"
    end
end
