require 'pry'

class Artist 
    
    attr_accessor :name
    attr_writer :songs

    @@all = []

    def initialize (name)
        @name = name 
        @songs = []
        @@all << self
    end

    def songs 
        @songs = Song.all.select {|song| song.artist}
    end

    def add_song(song)
        song.artist = self
        self.songs << song
        ## this is not the only way to add songs to self.songs, so I need a custom getter for @songs
    end

    def add_song_by_name(song_name)
        new_song = Song.new (song_name)
        add_song(new_song)
    end
   
    def self.all 
        @@all
    end

    def self.song_count
        # #Song.self.count this does all of them whether they have an artist or not 
        with_artists = Song.all.select {|song| song.artist}
        with_artists.count
    end
end

# beach_boys = Artist.new("Beach Boys")
# beach_boys.add_song_by_name("kokomo")
# binding.pry 
# 0