require 'rails_helper'

feature 'User views all authors' do
  scenario 'successfully' do
    author1 = create(:author_with_books, books_count: 1)

    visit root_path
    click_link 'Authors'

    expect(page).to have_css "#author_#{author1.id}"
    expect(page).to have_css "#book-#{author1.books[0].id}"
  end
end
