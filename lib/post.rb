class Post

    attr_reader :title, :author
    @@all =[]

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(author)
        author.add_post(self)
        
    end

    def author_name
        if @author
            @author.name
        else
            nil
        end
    end

    def add_author(author)
        @author= author
    end

    def self.all
        @@all
    end
end