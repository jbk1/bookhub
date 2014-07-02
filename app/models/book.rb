class Book < ActiveRecord::Base
	has_many :author_book
	has_many :authors, :through => :author_book

	after_initialize :defaults

	def defaults
    	self.publication_year ||= "0"
	end
	
end

