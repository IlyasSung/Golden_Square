require "diary"

RSpec.describe "Multi class program" do
    it "Tests if you can add entries and read the diary" do
        diary = Diary.new()
        diary.add_entry("I had a good day")
        result = diary.read()
        expect(result).to eq ["I had a good day"]
    end
    it "Tests if it can pick an entry based on wpm and time to read of the user" do 
        diary = Diary.new()
        diary.add_entry("I had a good day") 
        diary.add_entry("I had a bad day today but had ice cream")
        result = diary.read_entry_depending_on_time(5, 1)
        expect(result).to eq "I had a good day"
    end
    it "Tests if it can pick an entry based on wpm and time to read of the user" do 
        diary = Diary.new()
        diary.add_entry("I had a good day")
        diary.add_entry("I had a bad day today but had ice cream")
        diary.add_entry("I had a good day and had bqq pizza, it was very tasty")
        diary.add_entry("I had a bad day today because work was long and tiring")
        result = diary.read_entry_depending_on_time(200, 1)
        expect(result).to eq "I had a good day and had bqq pizza, it was very tasty"
    end
    it "Tests if it can pick an entry based on wpm and time to read of the user" do 
        diary = Diary.new()
        diary.add_entry("I had a good day")
        diary.add_entry("I had a bad day today but had ice cream")
        diary.add_entry("I had a good day and had pizza, it was very tasty")
        diary.add_entry("I had a bad day today because work was long and tiring")
        result = diary.read_entry_depending_on_time(8, 1)
        expect(result).to eq "I had a good day"
    end
    it "Tests if it can list all the tasks on the todolist" do
        todolist = ToDoList.new()
        result = todolist.list()
        expect(result).to eq []
    end
    it "Tests if it can add tasks to the todolist" do
        todolist = ToDoList.new()
        todolist.add("Wash up")
        todolist.add("Laundry")
        result = todolist.list()
        expect(result).to eq ["Wash up", "Laundry"]
    end
    it "Tests if it can extract phone numbers from all diary entries" do
        diary = Diary.new()
        diary.add_entry("I had a good day")
        diary.add_entry("I had a bad day today but had ice cream")
        diary.add_entry("I saw my friend, his number is 07238283728")
        diary.add_entry("I had a bad day today because work was long and tiring")
        result = diary.extract_phonenumbers()
        expect(result).to eq ["07238283728"]
    end
end