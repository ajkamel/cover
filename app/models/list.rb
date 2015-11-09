class List < ActiveRecord::Base
  has_many :book_lists
  has_many :books, through: :book_lists

  validates :title, :description, presence: true

  def five_books
    books[0..4]
  end
end
