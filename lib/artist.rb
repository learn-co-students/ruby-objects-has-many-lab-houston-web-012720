require_relative 'song.rb'
require 'pry'

class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|i| i.artist == self}
    end

    def add_song(song)
        Song.all.find{|i| i == song}.artist = self
    end

    def add_song_by_name(name)
        ns = Song.new(name)
        ns.artist = self
    end

    def self.song_count
        ns = []
        all.each do |i|
            ns << i.songs
        end
        ns.flatten.count
    end


end

ozzy = Artist.new("Ozzy")
white = Artist.new("White")
slayer = Artist.new("Slayer!")

# binding.pry
0
