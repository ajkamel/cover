require 'rails_helper'

describe 'books/show.html.erb' do
  let(:book) { build_stubbed(:book) }

  before do
    assign(:book, book)
  end

  context 'user is unauthenticated' do
    it 'does not render the Review link' do
      assign(:current_user, nil)

      render

      expect(rendered).to_not have_content('Add your review')
    end
  end

  context 'user is authenticated' do
    let(:user) { build_stubbed(:user) }

    before do
      assign(:current_user, user)
    end

    it 'does not show review link if user reviewed the book' do
      allow(book).to receive(:reviewed_by?).with(user).and_return true

      render

      expect(rendered).to_not have_content('Add your review')
    end

    it 'shows review link if user did not review the book' do
      allow(book).to receive(:reviewed_by?).with(user).and_return false

      render

      expect(rendered).to have_content('Add your review')
    end
  end
end
