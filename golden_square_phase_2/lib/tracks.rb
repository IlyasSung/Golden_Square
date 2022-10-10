=begin
1. Describe the problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the class interface

The name of the class.
The design of its initializer and the parameters it takes.
The design of its public methods, including:
    Their names and purposes.
    What parameters they take and the data types.
    What they return and that data type.
    Any other side effects they might have.

class Tracks
    def initialize
        # initialize array to store tracks
    end
    def add(track)
        # add track to array
    end
    def list
        # return array of tracks
    end
end

3. Create examples as tests

tracks = Tracks.new()
tracks.list() => []

tracks = Tracks.new()
tracks.add("92 Explorer, Post Malone")
tracks.add("Heat Waves, Glass Animals")
tracks.list() => ["92 Explorer, Post Malone", "Heat Waves, Glass Animals"]

=end

class Tracks
    def initialize
        @tracks = []
    end
    def list
        return @tracks
    end
    def add(track)
        @tracks.push(track)
    end
end