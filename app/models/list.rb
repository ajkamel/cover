class List < ActiveRecord::Base
  has_many :book_lists, dependent: :destroy
  has_many :books, through: :book_lists

  validates :title, :description, presence: true

  def five_books
    books.limit 5
  end
end
