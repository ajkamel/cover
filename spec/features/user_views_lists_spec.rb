require 'rails_helper'

feature 'User views all lists' do
  scenario 'successfully' do
    create(:list, title: 'Best Sci Fi')
    book = create(:book, cover_image_url: 'http://placehold.it/140x100')
    list_2 = create(:list, title: 'Based on a true story')
    list_2.books << book

    visit lists_path

    expect(page).to have_content('Best Sci Fi')
    expect(page).to have_content('Based on a true story')
    expect(page).to have_css('img[src*="http://placehold.it/140x100"]')
  end
end
