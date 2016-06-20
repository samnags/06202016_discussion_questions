1. Think about arrays
- What are some of the methods (non-iterator methods) that you know?
    - Boolean methods (includes?, empty?..etc) - anything resulting in a T or F.
    - length/ size - length of array
    - flatten - combine sub-arrays within an array
    - compact - remove nil values
    - shift, pop - deletes first/last element of array
    - push, unshift - adds new element to end of array
- When are they used?
Anytime you want to perform a general function on array or retrieve info about it.

2. Now list iterator methods for arrays
- There are four main ones that we have discussed
- When do you use each one
    - each - returns original array
    - map/collect - returns new array
    - find/ detect - goes through and finds the first of a given element
    - select - finds all of a given element

3. Now onto objects
1. Why do we even have objects?  Why not just use hashes?
Encapsulation/info hiding
Easier to model 
Easier to debug
You can combine information and methods
Easier to update code
Easier for other programmers to read
2. What is the difference between using a getter method, and just referencing the instance variable?
You can pass getter methods parameters and otherwise customize them as necessary
3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  Why?
it should be a class method, because instance methods should only have info about their particular instance, whereas classes should have info on all instances 
4. How does initialize work in an object?
When you call on a new instance of a class, it initializes it with certain parameters, arguments, and default values, also potentially associates instance variables with object (hook)





5. What two methods will attr_accessor :name write?
 def name=(name)
       @name = name
 end

  def name
       @name
  end


4. Object Relations
Consider books, authors and genres.
1. Draw out the relations between the objects.  Assume a book can only have one genre.

Books
Authors
Genres
name
name
type
author
 books
 
genre
 
 

Book
Belongs to an author and belongs to a genre
Author
Has many books and has many genres through books
Genre
Belongs to a book and belongs to an author through books

2. Which object is going act as my join - and thus store the data?
books are the join, because each instance of a book has a single genre and a single author











3. Ok, now write out the three classes and fill in the belongs to relations.

class Books
 attr_accessor :author, :genre, :name
  def initialize(author, genre, name)
    @name = name
    @author = author
    @genre = genre
    @author.add_book(self)
  end
end

class Authors
  attr_reader :books, :name

  def initialize 
    @name = name
    @books = []
  end

  def add_book(book)
    @books << book
  end
end

class Genres
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

4. Now write the method that will give me a list of books written by an author. Author.books:
def books
  @books
end






5. Now write a method that will give a list of all of the genre's of an author.
def genres
   self.books.map do |book|
     book.genre
    end.uniq.sort
end

