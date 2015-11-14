class Book < ActiveRecord::Base
  has_many :book_lists
  has_many :lists, through: :book_lists
  has_many :reviews
  belongs_to :author
  belongs_to :genre

  validates :title, presence: true

  scope :by_genre, -> (genre_id) { where(genre_id: genre_id) }

  def reviewed_by?(user)
    reviews.exists?(user: user)
  end
end
