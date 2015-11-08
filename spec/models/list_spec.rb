require 'rails_helper'

RSpec.describe List, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to have_many(:book_lists) }
  it { is_expected.to have_many(:books).through(:book_lists) }

  describe '#five_books' do
    it "returns only 5 of the list's books" do
      list = create(:list_with_books, books_count: 6)
      five_books = list.five_books

      expect(five_books.length).to eq 5
    end
  end

  describe '#destroy' do
    it 'cascades to book_lists' do
      list = create(:list_with_books, books_count: 2)

      expect { list.destroy }.to change(BookList, :count).by(-2)
    end
  end
end
