=begin
1. Describe the problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design a class system

class Diary
    def initialize() 
        @diary_entries = []
    end
    def add_entry(entry)
        # add diary entry
    end
    def read()
        # returns @diary_entries
    end
    def read_entry_depending_on_time(wpm, time_to_read)
        # picks a diary entry to read based on how much time they have and their wpm
    end
    def extract_phonenumbers()
        # extract phone numbers from the diary entries
    end
end

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
end

3. Create example of integration tests

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

# Tests if you can add entries and read the diary
diary = Diary.new()
diary.add_entry("I had a good day")
result = diary.read()
expect(result).to eq ["I had a good day"]

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

# Tests if it can pick an entry based on wpm and time to read of the user"
diary = Diary.new()
diary.add_entry("I had a good day")
diary.add_entry("I had a bad day today but had ice cream")
result = diary.read_entry_depending_on_time(5, 1)
expect(result).to eq "I had a good day"

# Tests if it can pick an entry based on wpm and time to read of the user"
diary = Diary.new()
diary.add_entry("I had a good day")
diary.add_entry("I had a bad day today but had ice cream")
diary.add_entry("I had a good day and had pizza, it was very tasty")
diary.add_entry("I had a bad day today because work was long and tiring")
result = diary.read_entry_depending_on_time(200, 1)
expect(result).to eq "I had a bad day today but had ice cream"

# Tests if it can pick an entry based on wpm and time to read of the user"
diary = Diary.new()
diary.add_entry("I had a good day")
diary.add_entry("I had a bad day today but had ice cream")
diary.add_entry("I had a good day and had pizza, it was very tasty")
diary.add_entry("I had a bad day today because work was long and tiring")
result = diary.read_entry_depending_on_time(8, 1)
expect(result).to eq "I had a good day"

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

# Tests if it can list all the tasks on the todolist
todolist = ToDoList.new
todolist.list() => []

# Tests if it can add tasks to the todolist
todolist = ToDoList.new
todolist.add("Wash up")
todolist.add("Laundry")
todolist.list() => ["Wash up, Laundry"]

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

#Tests if it can extract phone numbers from all diary entries
diary = Diary.new()
diary.add_entry("I had a good day")
diary.add_entry("I had a bad day today but had ice cream")
diary.add_entry("I saw my friend, his number is 07238283728")
diary.add_entry("I had a bad day today because work was long and tiring")
result = diary.extract_phonenumbers()
expect(result).to eq "07238283728"

4. Create Unit tests
=end

class Diary 
    def initialize() 
        @diary_entries = []
    end
    def add_entry(entry)
        @diary_entries << entry
    end
    def read()
        return @diary_entries
    end
    def read_entry_depending_on_time(wpm, time_to_read)
        words_able_to_read = wpm * time_to_read
        readable_entries = @diary_entries.reject do |entry|
            entry.count(" ") + 1 > words_able_to_read
        end
        return readable_entries.sort_by { |x| x.count(" ")}[-1]
    end
    def extract_phonenumbers
        @diary_entries.map do |entry|
            if (entry.scan(/0[0-9]{10}/) != [])
                return entry.scan(/0[0-9]{10}/)
            end
        end
    end
end

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
end