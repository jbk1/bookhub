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
      Book.create(title: 'Shantaram', author: 'Gregory David Roberts')
    end

    it 'should show the book title' do
      visit '/books'
      expect(page).to have_content 'Shantaram'
    end
      it 'should show the book author' do
      expect(page).to have_content 'Gregory David Roberts'
    end
  end

end
