1. Think about arrays
- What are some of the methods (non-iterator methods) that you know?
length: amount of elements in array
join: elements in array to create string
first/last: returns array[0], array[-1]
sort: puts array elements in ascending/alphabetical order
flatten: gets rid of nesting (Array within array)
reduce: sums the elements in an array
compact: eleminates nil values in array
uniq: returns a new array with only unique elements

- When are they used?
    

2. Now list iterator methods for arrays
- There are four main ones that we have discussed
each: iterates over each element in array to perform certain action, returns original array by default
map: when you want a new array  
find: looking for first element that returns true when yielded to the block
select(reject): like find only returns all the elements in a new array

- When do you use each one

3. Now onto objects
  1. Why do we even have objects?  Why not just use hashes?
Encapsulation/cohesiveness: each object has a bundle of information that can be made accessible or inaccessible to other objects
separation of concerns: objects are made to perform different functions 

  2. What is the difference between using a getter method, and just referencing the instance variable?
Getter method you can access from outside the object, whereas an instance variable you access from inside the object.

3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  Why?
Class; you need to iterate through all of the instances to find a match.

  4. How does initialize work in an object?
Initialize sets the "factory settings" for each new created instance of an object. It also can cause other things upon the new creation of an instance ( @@all << self)

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

Author has many books; book belongs to author. Book belongs to genre; genre has many books.
Author has many genres through books; genre has many authors through books. 

  2. Which object is going act as my join - and thus store the data?

Books, since they join authors to genres.

  3. Ok, now write out the three classes and fill in the belongs to relations.

class Book
    attr_accessor :name,:author,:genre 
    @@all=[]

    def initialize(name,author,genre)
        @name=name
        @author=author
        @genre=genre
        @@all << self
    end

    def self.all
        @@all
    end

end

class Author
    attr_accessor :name

    def initialize(name)
        @name=name
    end

end

class Genre
    attr_accessor :genre

    def initialize(genre)
        @genre=genre
    end

end
    



  4. Now write the method that will give me a list of books written by an author.

def books_by_author(searched_author)
    Book.all.select do |book|
        book.author==searched_author
    end
end

  5. Now write a method that will give a list of all of the genre's of an author.

def genres_by_author(searched_author)
    Book.all.map do |book|
        book.genre if book.author==searched_author
    end

end

Daniel Berry and Tal Goldfus