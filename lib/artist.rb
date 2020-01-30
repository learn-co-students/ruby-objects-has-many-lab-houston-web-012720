class Artist
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @songs = []
    end
    def add_song(song)
        song.artist = self
        @songs << song
        @@all << song
    end
    def songs
        @songs
        Song.all.select{|song|song.artist == self}
    end
    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
    end
    def self.song_count
        Song.all.count
    end
end
