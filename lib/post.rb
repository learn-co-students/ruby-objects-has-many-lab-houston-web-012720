
class Post
    attr_accessor :title , :author

    @@all = []
    def initialize(title)
        @title  = title
        save
    end

    def self.all
        @@all 
    end

    def save
        @@all << self
    end

    def author_name 
       answer = nil 
       @@all.each do |e|
            if !!(e.author)
                answer = e.author.name
            end
        end
        answer
    end
end