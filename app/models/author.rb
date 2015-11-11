class Author < ActiveRecord::Base
  has_many :books

  validates :name, presence: true
  validates :biography, presence: true

  def selected_books
    books[0..4]
  end
end
