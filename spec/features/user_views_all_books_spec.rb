require "rails_helper"

feature "User views all books" do
  scenario "list all books" do
    create(:book, title: "Practical Vim")
    create(:book, title: "The Giver")

    visit books_path

    expect(page).to have_book('Practical Vim')
    expect(page).to have_book('The Giver')
  end

  scenario 'by pagination' do
    create_list(:book, Book.paginates_per(2) + 1)

    visit books_path

    expect(page).to have_pagination
  end

  scenario 'filter by genre' do
    create(:book, title: 'Practical Vim', genre_name: 'Programming')
    create(:book, title: 'The Giver')

    visit books_path
    filter_genre('Programming')

    expect(page).to have_book('Practical Vim')
    expect(page).not_to have_book('The Giver')
  end

  def have_pagination
    have_css('.pagination')
  end

  def filter_genre(name)
    select name, from: 'Genre'
    click_on 'Go'
  end

  def have_book(title)
    have_selector('.book', text: title)
  end
end
