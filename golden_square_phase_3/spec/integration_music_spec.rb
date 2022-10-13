require "music_library"
require "track"

RSpec.describe "integration" do
    it "add and lists tracks" do
        music_library = MusicLibrary.new
        track1 = Track.new("one, two, three", "four five, six")
        track2 = Track.new("seven, eight, nine", "ten, eleven, twelve")
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.all).to eq [track1, track2]
    end

    it "search tracks that match" do
        music_library = MusicLibrary.new
        track1 = Track.new("one, two, three", "four five, six")
        track2 = Track.new("seven, eight, nine", "ten, eleven, twelve")
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.search("two")).to eq [track1]
    end
end