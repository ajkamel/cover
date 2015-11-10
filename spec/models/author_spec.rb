require 'rails_helper'

RSpec.describe Author, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:biography) }

  it { is_expected.to have_many(:books) }

  describe '#selected_books' do
    it "returns only 5 of the author's books" do
      author = create(:author_with_books, books_count: 6)
      selected_books = author.selected_books

      expect(selected_books.length).to eq 5
    end
  end

  describe '#destroy' do
    it 'cascades to books' do
      author = create(:author_with_books, books_count: 2)

      expect { author.destroy }.to change(Book, :count).by(-2)
    end
  end
end
