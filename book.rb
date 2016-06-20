class Book
 attr_reader :title
 attr_accessor :author, :genre

 def initialize(author = "", title, genre)
  @author = author
  @title = title
  @genre = genre
 end
end