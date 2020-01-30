require_relative 'author.rb'
require 'pry'

class Post

    @@all = []

    attr_accessor :author
    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        @author ? @author.name : nil
    end


end
