require 'rails_helper'

feature 'User views book' do
  scenario "and sees the book's description" do
    book = create :book

    view_book_page(book)

    expect(page).to have_book_description(book)
  end

  def view_book_page(book)
    visit root_path
    click_link 'Books'
    click_link book.title
  end

  def have_book_description(book)
    have_content book.description
  end
end
