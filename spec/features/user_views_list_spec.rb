require 'rails_helper'

feature 'User views list' do
  scenario "and see's the list's books" do
    list = create(:list_with_books, books_count: 2)

    visit lists_path
    click_link list.title

    expect(page).to have_css("#book-#{list.books[0].id}")
  end
end
