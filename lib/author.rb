
class Author
    attr_accessor :name, :posts
    def initialize(name)
        @name = name 
        @posts = []
    end

    def add_post(post)
        post.author = self
        @posts << post.title

    end

    def posts
        Post.all
    end

    def add_post_by_title(post_titile)
        post = Post.new(post_titile)
        add_post(post)
    end

    def self.post_count
        Post.all.length
    end

end

