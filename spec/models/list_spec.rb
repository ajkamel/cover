require 'rails_helper'

RSpec.describe List, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to have_many(:book_lists).dependent(:destroy) }
  it { is_expected.to have_many(:books).through(:book_lists) }

  describe '#five_books' do
    it 'returns only 5 of the list\'s books' do
      list = create :list
      books = create_list :book, 6
      list.books << books


      five_books = list.five_books

      expect(five_books.length).to eq 5
    end
  end
end
