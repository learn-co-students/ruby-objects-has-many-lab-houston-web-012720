class Author 

    attr_accessor :name
    attr_writer :posts

    @@all = []

    def initialize (name)
        @name = name
        @posts = []
    end

    def posts 
        @posts = Post.all.select {|post| post.author}
    end

    def self.all 
        @@all
    end

    def add_post (post)
        post.author = self
        self.posts << post 
    end

    def add_post_by_title (title)
        new_post = Post.new(title)
        add_post(new_post)
    end

    def self.post_count
        with_authors = Post.all.select {|post| post.author}
        with_authors.count
    end
end