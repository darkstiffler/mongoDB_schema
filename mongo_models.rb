class User
	include MongoMapper::Document

	key :name, String
	key :admin, Boolean

	many :cars
end

class Car
	include MongoMapper::Document

	key :year, Integer

	one :make

end

class Make
	include MongoMapper::EmbeddedDocument

	key :name, String

	belongs_to :car

end

class Model
	include MongoMapper::EmbeddedDocument

	key :name, String

	belongs_to :make

end



