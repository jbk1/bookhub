require 'rails_helper'

describe 'authors' do

	context 'no authors' do
		it 'tells me there are no authors' do
			visit '/authors'
			expect(page).to have_content('No authors yet')
		end
	end

  context 'there are authors' do
  
    before do
      Author.create(name: 'nadav')
    end

    it 'should show the author name' do
      visit '/authors'
      expect(page).to have_content 'nadav'
    end
  end

  
  # it 'an author can have multiple books' do
  #   Book.create(title: 'Shantaram', author: 'james kemp' 'nadav matalon')

  # end
end

