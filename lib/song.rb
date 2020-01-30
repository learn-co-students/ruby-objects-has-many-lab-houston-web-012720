require 'pry'
require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"

class Song
    attr_accessor :name
    attr_reader :artist

    @@all = []

    def self.all
        @@all
    end

    def add_to_all_songs
        @@all << self
    end

    def initialize (name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
    end

    def artist_name
        if self.artist
            @artist.name
        end
    end

end

