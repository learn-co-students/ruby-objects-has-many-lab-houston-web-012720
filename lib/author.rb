class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end 

  def add_post(post)
    post.author = self
    @posts << post
  end

  def posts
    @posts
    Post.all.select { |post| post.author == self }
  end

  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self
  end

  def self.post_count
    Post.all.count
  end  

end  
