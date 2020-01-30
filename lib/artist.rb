class Artist
    @@all = []
    attr_accessor :name, :songs
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end
    
    def self.all
        @@all
    end

    def songs
        @songs = Song.all.select do | song |
            song.artist == self 
            end
        @songs
    end

    def add_song(song)
        song.artist = self
        self.songs
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
        self.songs
    end

    def self.song_count
        count = 0
        @@all.each do | artist | 
            count += artist.songs.length
        end
        count
    end
end