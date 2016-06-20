require_relative 'author.rb'
require_relative 'genre.rb'
require_relative 'book.rb'

require 'pry'

steven = Author.new("Stephen King")
mike = Author.new("Michael Crighton")

mike.write_book("Jurassic Park", "Fantasy")

Pry.start	