1. Think about arrays
- What are some of the methods (non-iterator methods) that you know?
- When are they used?

push, shift -> places elements in last and first position of array
pop, unshift -> removes elements in last and first position, returns those elements
.uniq -> removes duplicate values
.compact -> removes nil values
.flatten -> transforms nested array into one-dimensional array
.length -> returns how many elements are in array

2. Now list iterator methods for arrays
- There are four main ones that we have discussed
- When do you use each one
.each -> perform a process
.map -> return a new array
.select -> return a new array which each element satisfies a condition
.find -> return first element that satisfies a condition

3. Now onto objects

  1. Why do we even have objects?  Why not just use hashes?
  - used to encapsulate data
  - class-specific methods eliminate dependencies

  2. What is the difference between using a getter method, and just referencing the instance variable?
  - using a getter method allows the user to retrieve the variable's value outside of the class

  3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  Why?
  - class method; you need to iterate through all of the users which means the method isn't specific to just one instance of user

  4. How does initialize work in an object?
  - initialize defines which arguments are needed to create a new instance.  also defines actions that are performed / values that are set when a new instance is created

  5. What two methods will attr_accessor :name write?
  Write them out please...

  def name
    @name
  end

  def name= (name)
    @name = name
  end

4. Object Relations
  Consider books, authors and genres.
  1. Draw out the relations between the objects.  Assume a book can only have one genre.

  a book belongs to an author and a genre
  a genre has many books and has many authors
  an author has many genres and has many books

  2. Which object is going act as my join - and thus store the data?

  genre

  3. Ok, now write out the three classes and fill in the belongs to relations.

  class Book
    def initialize
      @author
      @genre
    end
  end

  class Genre
    def initialize
      @authors = []
      @books = []
    end
  end

  class Author
    def initialize
      @genres = []
      @books = []
    end
  end

  4. Now write the method that will give me a list of books written by an author.

  def books
    @books
  end

  5. Now write a method that will give a list of all of the genre's of an author.

  def genres
    @genres
  end