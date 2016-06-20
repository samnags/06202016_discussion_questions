class Genre

	attr_reader :name

	@@all = {}

	def self.all
		@@all
	end

	def initialize(name)
		#string
		@name = name
		#if existing, nothing - else, create it	end

	

	end

def self.create_by_name(name)
  genre = Genre.new(name)
  genre
end

def self.find_by_name(name)
  Genre.all.find {|genre| genre.name == name}
end

def self.find_or_create_by_name(name)
	genre = Genre.find_by_name(name)
  genre ||= Genre.create_by_name(name)
end

end


