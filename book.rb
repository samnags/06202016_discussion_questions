class Book

	attr_reader :title, :author, :genre

	@@all = []

	def self.all
		@@all
	end

	def initialize(title, author, genre)
		#string 
		@title = title
		#author object
		@author = author
		#genre object
		@genre = genre

		@@all << self
	end

end
