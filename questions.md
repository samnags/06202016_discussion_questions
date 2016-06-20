1. Think about arrays
- What are some of the methods (non-iterator methods) that you know?
  uniq, sort, push, pop, sort, flatten, join, reverse, and size.

- When are they used?
  uniq - returns a new array without duplicate elements.
  sort - accepts an argument, and returns a new array with the elements sorted by that argument
  push - adds to the end of an array.
  pop - removes the last element within an array and returns it.
  flatten - converts a multi-dimensional array to a single-dimensional array.
  join - converts the array to a string, accepts an additional parameter for what goes inbetween.
  reverse - flips the order of the elements within an array and returns a new array.
  size - counts the number of elements within an array.

2. Now list iterator methods for arrays
- There are four main ones that we have discussed
  each, map, select, and find.

- When do you use each one
  each - when you're not interested in the return value of the iteration
  map - when you want to return the same number of elements and perform a function on each element.
  select - when you want to return an array with elements that are selected based on an argument.
  find - when you want to find the first element in an array for which a block argument returns true.

3. Now onto objects
  1. Why do we even have objects?  Why not just use hashes?
    - Objects provide encapsulation.
    - Objects can be reused and can utilize special functions

  2. What is the difference between using a getter method, and just referencing the instance variable?
    - We can't reference the instance variable outside of its class without the getter method.

  3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  Why?
    - Ideally, a class method. Since we'd more than likely finding the name within a class variable and not an instance of it.
  4. How does initialize work in an object?
    - It executes the code within it whenever an instance of its class is created.
  5. What two methods will attr_accessor :name write?
  Write them out please...
  def name=(name)
    @name = name
  end

  def name
    @name
  end

4. Object Relations
  Consider books, authors and genres.
  1. Draw out the relations between the objects.  Assume a book can only have one genre.
    - An Author has many -> Books (A book belongs to an author)
    - A book belongs to a genre and an Author can have many genres??
  2. Which object is going act as my join - and thus store the data?
    Genre?
  3. Ok, now write out the three classes and fill in the belongs to relations.

  class Author
    attr_accessor :name
    @@authors = Array.new
    def initialize
      @@authors << self
    end
  end

  class Book
    attr_accessor :title, :author
    @@books = Array.new
    def initialize
      @@books << self
    end
  end

  class Genre
    attr_accessor :genre
    def initialize

    end
  end


  4. Now write the method that will give me a list of books written by an author.

  I'm still having issues with grasping Class objects and their relations.

  5. Now write a method that will give a list of all of the genre's of an author.
