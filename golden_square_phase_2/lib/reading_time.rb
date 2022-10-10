=begin
Describe the problem:
    As a user
    So that I can manage my time
    I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

Design the method signature:
    Name of method - reading_time
    What parameters it takes, their names and data types - 1 parameter, input, integer
    What it returns and the data type of that value - It will return a string telling the user how long it will take to read the piece of text

Create example tests:
    reading_time(1) => 1 minute
    reading_time(200) => 1 minute
    reading_time(500) => 3 minutes
    reading_time(2000) => 10 minutes
    reading_time(5223) => 27 minutes
=end

def reading_time(input)
    if input <= 200
        return "1 minute"
    else
        time = input / 200
        if input % 200 != 0
            time += 1
        end
        return time.to_s + " minutes"
    end
end
