class Song

    attr_reader :name, :artist
    # attr_writer :artist

    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        artist.add_song(self)
        
    end

    def add_artist(artist)
        @artist = artist
    end

    def artist_name
        if @artist
            @artist.name
        else
            nil
        end
    end

    def self.all
        @@all
    end

end