1. Think about arrays
- What are some of the methods (non-iterator methods) that you know?
- When are they used?
  .join - splits an array into a string 
  .clear - clears elements of the array
  .push - adds new element to the end of the array
  .shift - removes the first element from the array
  .unshift - adds a new element to the beginning of the array 
  .first - retrieves the first element of the array
  .last - retrieves the last element of the array
  .pop - removes last element of array and return that value
  .sort - sorts array 
  .gsub - substitution 
  .compact - removes all nil values from an array
  .flatten - returns an array that is one dimensional  
2. Now list iterator methods for arrays
- There are four main ones that we have discussed
- When do you use each one
  .each - iterates through each element of the array, but does not change the elements of the original array.
  .map - .each but creates a new array. Bang operator changes original array
  .collect - same as .map
  .each_with_index - iterates through each element of the original array and creates a new object that holds the new values.
  .select - iterates through the array and returns values based on the condition set
  .find returns the first element that is found based on the condition

3. Now onto objects
  1. Why do we even have objects?  Why not just use hashes?
    We want to be able to keep track of objects and give them properties and actions. Eliminates the need for duplicate      code and reduces possibility of bugs when making changes. Objects also have an instance which make them unique while     hashes do not.
  2. What is the difference between using a getter method, and just referencing the instance variable?
    We need the getter method to access the instance outside of the class itself. Others it won’t be accessible. A getter method only retrieved the value of the instance variable but does not allow you to alter its value. 

  3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  Why?
    Class Method, since we need to know all the objects that have been made in the class to find that attribute name that matches that name. 
  4. How does initialize work in an object?
    It takes in an argument and executes whenever the class it called with a .new
  5. What two methods will attr_accessor :name write?
  Write them out please...

    def name
      @name
    end
    
    def name=(name)
      name = @name
    end 



4. Object Relations
  Consider books, authors and genres.
  1. Draw out the relations between the objects.  Assume a book can only have one genre.
      Book belongs to author and they belong to genre. Both authors and genres has many books. 
  2. Which object is going act as my join - and thus store the data?
      The Book class will act as the join.It will store information on the author, genre, and book title. attr_accessor :name, :genre, :author
  3. Ok, now write out the three classes and fill in the belongs to relations.
      1. Book belongs to Genre, Book belongs to Author
    	2. Author has many books, has many genres
    	3. Genre has many books, has many authors
  4. Now write the method that will give me a list of books written by an author.
    def self.find_authors(author)
  	  self.all.select do |book|
        book.author == author
      end 
    end 

  5. Now write a method that will give a list of all of the genre's of an author.
class Book
  attr_accessor :name, :genre, :author
  @@all = []
  
  def initialize (name, author, genre)
    @name = name 
    @author = author
    @genre = genre
    @@all << self 
  end
  
  def self.all
    @@all
  end 

  def self.find_authors(author)
    self.all.select do |book|
      book.author == author
    end 
  end 

  def self.find_genres(author)
    find_authors(author).select do |book|
      book.genre
    end 
  end 

end 

 



#has many books
class Genre
  
  attr_accessor :name 
  def initialize(name)
    @name = name 
  end 

end 

#has many books
class Author
  attr_accessor :name
  def initialize(name)
    @name = name 
  end 

end  

