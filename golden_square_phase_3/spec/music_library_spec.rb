require "music_library"

RSpec.describe MusicLibrary do
    it "add and lists tracks" do
        music_library = MusicLibrary.new
        track1 = double :track
        track2 = double :track
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.all).to eq [track1, track2]
    end

    it "search track by title" do
        music_library = MusicLibrary.new
        track1 = double :track, matches?: true
        track2 = double :track, matches?: false
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.search("two")).to eq [track1]
    end
end