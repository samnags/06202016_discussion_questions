1. Think about arrays
- What are some of the methods (non-iterator methods) that you know?
Flatten, pop, push, shift, unshift, first, last 
- When are they used?
Inject is used to perform an operation on a base value/object for each item in an array (similar to EWO)
Map is used to operate on each item of an array and return an array of altered values
EWI is used to keep track of the index value of array items while operating on them
EWO is similar to inject, but automatically returns the special object
Select returns elements in an array for which a block is true
Alias for inject 
Include returns true if an array contains a value 
All returns true if each item of the array evaluates to true based on the block

2. Now list iterator methods for arrays
- There are four main ones that we have discussed
Select, Map, EWI, EWO 
- When do you use each one


3. Now onto objects
1. Why do we even have objects?  Why not just use hashes?
Objects bundle specific data and behaviors in ways that are more flexible than hashes
2. What is the difference between using a getter method, and just referencing the instance variable?
The getter provides abstraction by allowing the function to continue working if the variable itself is changed
Allows modification before retrieval 
3. Should a method that finds the correct user by name (eg. find_by_name?) be a class method or instance method?  
It depends, but probably Class - it sosunds like the method would be looking for a specific instance, which wouldn’t make sense for an instance variable
4. How does initialize work in an object?
Good question… I thought it was a class method that generated a new object (BasicObject) and then set the specific instance info equal to whatever is contained in initialize and gave it the behaviors of instances of that class
5. What two methods will attr_accessor :name write?
Write them out please...  
name 
@name
End
name=(str)
@name = str
end

4. Object Relations
Consider books, authors and genres.
1. Draw out the relations between the objects.  Assume a book can only have one genre.

2. Which object is going act as my join - and thus store the data?
Author
