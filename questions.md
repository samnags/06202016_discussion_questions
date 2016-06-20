1. Think about arrays
- What are some of the methods (non-iterator methods) that you know?
  .length
  .sort
  .first
  .last
  .pop
  .shift
  .unshift
  .push
  .uniq
  .flatten
  .join
  .compact
- When are they used?
  .length - checks length of array
  .sort - sorts in ascending order
  .first - returns the first element
  .last - returns the last element
  .pop - removes last element
  .shift adds element in front of first element
  .unshift removes first element
  .push adds to last element
  .flatten converts to 1-d array from nested
  .join converts array of strings into a string
  .compact removes nil values

2. Now list iterator methods for arrays
- There are four main ones that we have discussed
  .each
  .select
  .collect
  .find
- When do you use each one
  .each - when we have a block to operate on the array
  .select - when we want a certain group of elements that meet a certain criteria
  .collect - returns the new array which is operated on by the block
  .find returns first element that matches the block

3. Now onto objects
  1. Why do we even have objects?  Why not just use hashes?
    - encaspulate data and logic
    - isolate specific behaviors and data
  2. What is the difference between using a getter method, and just referencing the instance variable?
    - getter method is available outside the class. referencing the instance variable is only available within the class
  3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  Why?
    - class method because the list of users is stored in a class variable
  4. How does initialize work in an object?
    - assigns default attributes to every instance of the object that is created
  5. What two methods will attr_accessor :name write?
  Write them out please...
    - def blank
       @blank
      end

      def blank=
        @blank
      end

4. Object Relations
  Consider books, authors and genres.
  1. Draw out the relations between the objects.  Assume a book can only have one genre.

    - Author has many books, has many genres
    - Book belongs to an author, belongs to a genre
    - Genre has many books, has many authors
  2. Which object is going act as my join - and thus store the data?
    - Genre has the list of books and the list of authors, thus will serve as the join
  3. Ok, now write out the three classes and fill in the belongs to relations.

  4. Now write the method that will give me a list of books written by an author.
  5. Now write a method that will give a list of all of the genre's of an author.

  3 4 5  answered in the attached ruby files
