class Author

 attr_accessor :title, :genre, :author
 attr_reader :name
 @@authors = []
 
 def initialize(name)
  @name = name
  @books = []
  @genres = []
  @@authors << self
 end

 def books
  @books
 end

 def genres
  @genres
 end

 def add_book(title, genre)
  book << Book.new(title, genre)
  @genres << genre
  genre.authors << self
  book.author = self
 end

end