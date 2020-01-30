require_relative 'artist.rb'
require 'pry'

class Song

    @@all = []

    attr_accessor :artist
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def artist_name
        @artist ? @artist.name : nil
    end

    def self.find(id)
        @@all.find do |i|
            i == id
        end
    end

    def self.find_by_name(name)
        @@all.find do |i|
            i.name == name
        end
    end


end

cgt = Song.new("Crazy Gravy Train")
sna = Song.new("Seven Nation Arby's")
ghua = Song.new("Grob Hates Us All")

# binding.pry
0