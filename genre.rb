class Genre
 attr_accessor :title, :author, :genre
 def initialize(genre)
  @genre = genre
  @authors = []
  @books = []
 end
end