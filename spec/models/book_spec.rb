require 'rails_helper'

RSpec.describe Book, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:author) }

  it { is_expected.to have_many(:book_lists) }
  it { is_expected.to have_many(:lists).through(:book_lists) }
  it { is_expected.to have_many(:reviews) }
  it { is_expected.to belong_to(:author) }

  describe '#reviewed_by?(user)' do
    it 'returns true if user reviewed book' do
      user_with_review = create(:user)
      user_without_review = create(:user)

      book = create(:book)
      create(:review, user: user_with_review, book: book)

      expect(book.reviewed_by?(user_with_review)).to eq true
      expect(book.reviewed_by?(user_without_review)).to eq false
    end
  end

  describe '#update_avg_rating' do
    it 'updates the book rating' do
      book = create(:book)
      create(:review, rating: 3, book: book)
      create(:review, rating: 5, book: book)

      book.update_avg_rating

      expect(book.average_rating).to eq 4
    end
  end
end
