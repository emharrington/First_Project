require 'music_tracker'

RSpec.describe MusicTracker do
    context "given an empty string" do
        it "fails" do
            music_tracker = MusicTracker.new
            expect { music_tracker.add("") }.to raise_error "Please input a track."
        end
    end

    context "given one track" do
        it "returns the track" do
            music_tracker = MusicTracker.new
            expect(music_tracker.add("song")).to eq ["song"]
        end
    end

    context "given more than one track" do
        it "returns list of tracks" do
            music_tracker = MusicTracker.new
            music_tracker.add("song 1")
            music_tracker.add("song 2")
            expect(music_tracker.tracks_listened_to).to eq ["song 1", "song 2"]
        end
    end
end