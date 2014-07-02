require 'rails_helper'

describe 'book listing page' do
  
  context 'no books' do
    it 'tells me there a no books' do
      visit '/books'
      expect(page).to have_content 'No books yet'
    end
  end

  context 'are books' do
  
    before do
      Book.create(title: 'Shantaram')
    end

    it 'should show the book title' do
      visit '/books'
      expect(page).to have_content 'Shantaram'
    end
  end  

  it "has a year of publication" do
    book = Book.create(title: "The Hobbit", publication_year: "1937")
    expect(book.publication_year).to eq "1937"
  end

  it "has its year of publication set to 0 by default if no value given" do
    book = Book.create(title: "The Hobbit")
    expect(book.publication_year).to eq "0"
  end
end
