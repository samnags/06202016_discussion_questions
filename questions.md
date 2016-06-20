1. Think about arrays
- What are some of the methods (non-iterator methods) that you know?
- When are they used?

2. Now list iterator methods for arrays
- There are four main ones that we have discussed
- When do you use each one

3. Now onto objects
  1. Why do we even have objects?  Why not just use hashes?
  2. What is the difference between using a getter method, and just referencing the instance variable?
  3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  Why?
  4. How does initialize work in an object?
  5. What two methods will attr_accessor :name write?
  Write them out please...

4. Object Relations
  Consider books, authors and genres.
  1. Draw out the relations between the objects.  Assume a book can only have one genre.
  2. Which object is going act as my join - and thus store the data?
  3. Ok, now write out the three classes and fill in the belongs to relations.
  4. Now write the method that will give me a list of books written by an author.
  5. Now write a method that will give a list of all of the genre's of an author.


1. Non iterator array methods
  uniq
  flatten
  [index]
  pop
  shift
  unshift
  slice

  

2. Iterator methods
  map
  each
  each_with_object
  find
  any?
  select

3. objects
  1. More efficient for encapsulation, storing and accessing linked information.
  2. The getter method is more flexible across large amounts of code.  If you change the variable name, you only have to change the getter method name instead of every instance of the instance variable.  Improved abstraction and encapsulation.
  3. A Class method, because you’re searching through multiple instances of that class, not just one instance.
  4. Initialize runs methods/assigns variable to an instance of the class upon its creation.
  5.  def name
    @name
       end

      def name=(name)
    @name = name
               end

4. Object relations
  1.  book belongs to one author, one genre
  genre has many books and many authors
  author has many books and many genres
  2. book
  3. See 1
  4. def books
    self.@books
      end
    SELECT titles FROM books INNER JOIN authors ON books.author_id = authors.id
  5.  def genres
       self.@genres
    end
    

SELECT author_name, genre_name FROM books INNER JOIN genres ON genres.book_id = books.id INNER JOIN authors ON books.author_id = authors.id
SELECT authors.name, genres.name FROM authors INNER JOIN books ON authors.id = books.author_id INNER JOIN genres ON genres.id = books.genre_id