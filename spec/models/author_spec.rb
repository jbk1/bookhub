require 'rails_helper'


describe 'authors' do
	it 'have a name' do   
		author = Author.create(name: 'Homer')
		expect(author.name).to eq 'Homer'
	end

	it 'has a book' do
		author = Author.create(name: 'Homer', books: [Book.create(title: 'The Iliad')])
		expect(author.books.first.title).to eq 'The Iliad'
	end

	it "can have more than one author" do
		book = Book.create(title: "The Hobbit")
		author_1 = Author.create(name: "Tolkein")
		author_2 = Author.create(name: "Tolkein_2")
		expect(book.authors.count).to eq 0
		book.authors << author_1
		expect(book.authors.count).to eq 1
		book.authors << author_2
		expect(book.authors.count).to eq 2
		expect(book.authors.first.name).to eq "Tolkein"
		expect(book.authors.second.name).to eq "Tolkein_2"
	end


end

# RSpec.describe Author, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
