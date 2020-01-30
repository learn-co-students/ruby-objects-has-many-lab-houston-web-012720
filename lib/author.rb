require_relative 'post.rb'
require 'pry'

class Author

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select{|i| i.author == self}
    end

    def add_post(post)
        g = Post.all.find{|i| i == post}
        g.author = self
    end

    def add_post_by_title(title)
        g = Post.new(title)
        g.author = self
    end

    def self.post_count
        count = 0
        Post.all.each{|i| i.author ? count +=1 : nil}
        count
    end

end
