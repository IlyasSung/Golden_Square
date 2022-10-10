=begin
Describe the problem:
    As a user
    So that I can keep track of my tasks
    I want to check if a text includes the string #TODO.
Design the method signature:
    Name of method - include_todo
    What parameters it takes, their names and data types - 1 parameter, text, string
    What it returns and the data type of that value - It will return either true or false

Create example tests:
    include_todo("#TODO") => true
    include_todo("Ilyas") => false
    include_todo("#TODO washing")
    include_todo("cooking")
=end

def include_todo(text)
    words = text.split(" ")
    return words.include?("#TODO")
end