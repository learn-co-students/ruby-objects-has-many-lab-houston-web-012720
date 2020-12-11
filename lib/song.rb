class Song
    @@all = []

    attr_accessor :name, :artist
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist=(artist)
        @artist = artist
    end

    def artist_name
        if !self.artist
            return nil
         end
         @artist.name
    end
end