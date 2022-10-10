require "tracks"

RSpec.describe "tracks class" do
    it "Check list method" do
        tracks = Tracks.new()
        result = tracks.list()
        expect(result).to eq []
    end
    it "Check add method" do
        tracks = Tracks.new()
        tracks.add("92 Explorer, Post Malone")
        tracks.add("Heat Waves, Glass Animals")
        result = tracks.list()
        expect(result).to eq ["92 Explorer, Post Malone", "Heat Waves, Glass Animals"]
    end
end