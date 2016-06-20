class Author

	attr_accessor :books, :genres
	attr_reader :name

	def initialize(name)
		@name = name
		@genres = []
		@books = []
	end

	def write_book(name, options)
		manuscript = Book.new()
		books << manuscript
		#won't be flat
		genres << manuscript.genres.values
	end

end

class Book

	attr_reader :title, :author, :genres

	def initialize(title, author, options)
		@title = title
		@author = author
		@genres = {}
		@genres = genres.merge(options)

	end
end

class Genre

	attr_reader :name

	def initialize(name)
		@name = name
	end

end


