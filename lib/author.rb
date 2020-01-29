class Author

    attr_reader :name, :posts
    attr_writer :posts

    @@count = 0

    def initialize (name)
        @name = name
        @posts = []
    end


    def add_post(post)
        @posts << post
        post.add_author(self)
        @@count += 1
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        @@count
    end
end