
class Song
    attr_accessor :name , :artist

    @@all = []
    def initialize(name)
        @name  = name
        save
    end

    def self.all
        @@all 
    end

    def save
        @@all << self
    end

    def artist_name 
       answer = nil 
       @@all.each do |e|
            if !!(e.artist)
                answer = e.artist.name
            end
        end
        answer
    end
end