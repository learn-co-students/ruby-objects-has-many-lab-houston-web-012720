class Author
    @@all = []
    attr_reader :name, :posts
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def posts 
        @posts = Post.all.select do | post |
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
        self.posts
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
        self.add_post(new_post)
        self.posts
    end

    def self.post_count
        count = 0
        @@all.each do | author |
            count += author.posts.length
        end
        count
    end
end