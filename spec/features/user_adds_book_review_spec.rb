require 'rails_helper'

feature 'User adds book review' do
  scenario 'successfully' do
    user = create(:user)
    book = create(:book)

    visit book_path(book, as: user)
    click_link 'Add your review'
    fill_in 'review_body', with: 'this book was amazing'
    select 1, from: 'review_rating'
    click_button 'Save'

    expect(page).to have_content 'Thanks for adding your review'
  end
end
