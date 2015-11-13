require 'rails_helper'

RSpec.describe Review, type: :model do
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_presence_of(:book) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:book) }
  it { is_expected.to validate_inclusion_of(:rating).in_array((1..5).to_a) }

  describe '#user_email' do
    it 'is the email of the user who wrote the review' do
      user = build_stubbed :user, email: 'me@me.com'
      book = build_stubbed :book
      review = build_stubbed :review, user: user, book: book

      email = review.user_email

      expect(email).to eq 'me@me.com'
    end
  end
end
