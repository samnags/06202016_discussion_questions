Arrays
  Methods
    - compact - get rid of nil values
    - flatten - make one array 
    - split - turn into string
    
  Iterators
    - .each - calls the given block once for each element and returns what was passed through
    - .collect/.map - invokes given block once for each element and creates a new array containing values returned, but will return same number of elements in array
    - .find - will return the first thing it finds based on your condition and return only that
    - .select - will grab items based on your condition and will return them in a new array

Objects
  1. Why do we even have objects?  Why not just use hashes?
    - With objects, we can create methods that can manipulate the object/data

  2. What is the difference between using a getter method, and just referencing the instance variable?
    - Getter method returns information stored in an instance variable, whereas an instance variable can be accessed throughout the class

  3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  Why?
    - It should be an instance method because they belong to any instance of the class, that way we can find_by_name all names initialized.

  4. How does initialize work in an object?
    - Initialize will, every time an instance is created, it will set it with the conditions passed through.
  5. What two methods will attr_accessor :name write?
Write them out please...  
    def @name=name
      @name = name
    end

    def @name
      @name
    end


Object Relations
Consider books, authors and genres.
1. Draw out the relations between the objects.  Assume a book can only have one genre.
  - Books belong to one author, and have one genre
  - Authors have many books, and can have many genres

2. Which object is going act as my join - and thus store the data?
  - Book will act as the join - as it contains both author and genre

3. Ok, now write out the three classes and fill in the belongs to relations.
  require 'pry'
  class Book
    attr_accessor :title, :author, :genre
    def initialize(title, genre, author)
      @title = title
      @genre = genre
      @author = author

    end

    def author_name
      if self.author
        self.author.name
      end
    end
    # def genre
    #   if self.genre
    #     self.genre.type
    #   end
    # end
    def self.title=(title)
      self.title
    end
    def self.title
      self.title
    end

    # def self.author=(author)
    #   self.author
    # end
    # def self.author
    #   self.author
    # end
    # def self.genre=(genre)
    #   self.genre
    # end
    # def self.genre
    #   self.genre
    # end
  end

  class Author
    attr_accessor :name
    def initialize(name)
      @name = name
      @books = []
      @genres = []
    end

    def books
      @books
    end

    def add_books(book)
      @books << book
      book.author = self
    end

    def genres
      @genres
    end

    def add_genres(genre)
      @genres << genre
      genre.author = self
    end
  end

  class Genre
    attr_accessor :type
    def initialize(type)
      @type = type
    end

  end
  book = Book.new('hp', 'fantasy', 'jk rowling')
  author = Author.new(book.author)
  genre = Genre.new(book.genre)



4. Now write the method that will give me a list of books written by an author.
  class Book
    @@all = []
    attr_accessor :title, :author, :genre
    def initialize(title, genre, author)
      @title = title
      @genre = genre
      @author = author
      @@all << self
    end

    def author_name
      if self.author
        self.author.name
      end
    end

    def find_by_author(author)
      @@all.find do |book|
        book.author == self
      end
    end

    def self.title=(title)
      self.title
    end

    def self.title
      self.title
    end

  end

5. Now write a method that will give a list of all of the genres of an author.

 class Book
    @@all = []
    attr_accessor :title, :author, :genre
    def initialize(title, genre, author)
      @title = title
      @genre = genre
      @author = author
      @@all << self
    end

    def author_name
      if self.author
        self.author.name
      end
    end

    def find_by_author(author)
      @@all.select do |book|
        book.author == self
      end
    end

    def find_genre(author)
      @@all.select do |book|
        genre.author == self
      end
    end

    def self.title=(title)
      self.title
    end

    def self.title
      self.title
    end

  end

  class Author
    attr_accessor :name
    def initialize(name)
      @name = name
      @books = []
      @genres = []
    end

    def books
      @books
    end

    def add_books(book)
      @books << book
      book.author = self
    end

    def genres
      @genres
    end

    def add_genres(genre)
      @genres << genre
      genre.author = self
    end
  end

 class Genre
    attr_accessor :type
    def initialize(type)
      @type = type
    end
  end

book = Book.new('hp', 'fantasy', 'jk rowling')
author = Author.new(book.author)
genre = Genre.new(book.genre)

