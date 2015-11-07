require "rails_helper"

feature "User views all books" do
  scenario "list all books" do
    create(:book, title: "Practical Vim")
    create(:book, title: "The Giver")

    visit books_path

    expect(page).to have_content("Practical Vim")
    expect(page).to have_content("The Giver")
  end

  scenario 'by pagination' do
    create_list(:book, Book.paginates_per(2) + 1)

    visit books_path

    expect(page).to have_pagination
  end

  def have_pagination
    have_css('.pagination')
  end
end
