# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'test'
    fill_in 'Price', with: '9.99'
    fill_in 'Date', with: '12/12/2012'

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('test')
    expect(page).to have_content('9.99')
    expect(page).to have_content('2012-12-12')
  end
end
