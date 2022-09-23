class MusicTracker
    def initialize
        @list_of_tracks = []
    end

    def add(track)
        fail "Please input a track." if track.empty?
        @list_of_tracks << track
    end

    def tracks_listened_to
        return @list_of_tracks
    end
end

#As a user, So that I can keep track of my music listening
#I want to add tracks I've listened to and see a list of them.

#1 - user inputs empty string DONE
#music_tracker = MusicTracker.new
#expect { music_tracker.add("") }.to raise_error "Please input a track."

#2 - user inputs one track DONE
#music_tracker = MusicTracker.new
#expect(music_tracker.add("song")).to eq ["song"]

#3 - user inputs more than one track
#music_tracker = MusicTracker.new
#music_tracker.add("song 1")
#music_tracker.add("song 2")
#expect(music_tracker.tracks_listened_to).to eq ["song 1", "song 2"]