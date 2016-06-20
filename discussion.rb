#Partner: Grace Juster

class Book
  attr_accessor :name, :author, :genre
  def initialize(name)
    @name = name
  end
end

class Author
  attr_accessor :name, :books
  def initialize(name)
    @name = name
    @books = []
    @genres = []
  end

  def add_book(book)
    @books << book
    book.author = self
  end

  def genre(author)
    author.books.each do |book|
      @genres << book.genre
    end
  end 
end

class Genre
    attr_accessor :name, :books

  def initialize(name)
    @name =name
    @books = []
  end

  def add_book(book)
    @books<< book
    book.genre = self
  end
end
