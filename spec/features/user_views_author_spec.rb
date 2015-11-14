require 'rails_helper'

feature 'user views author page' do
  scenario 'from the book view page' do
    author = create(:author)
    book = create(:book, author: author)

    visit book_path(book)
    click_link author.name

    expect(page).to have_content(author.biography)
    expect(page).to have_content(book.title)
  end
end
