class Author

	attr_accessor :books, :genres
	attr_reader :name

	def initialize(name)
		@name = name
		@genres = []
		@books = []
	end

	def write_book(name, genre_name)
		genre = Genre.find_or_create_by_name(genre_name)
		manuscript = Book.new(name, self, genre)
		#puts book in genres.books 

		books << manuscript
		#won't be flat
		genres << genre 
	end

end