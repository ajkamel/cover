class Book < ActiveRecord::Base
  has_many :book_lists
  has_many :lists, through: :book_lists
  has_many :reviews
  belongs_to :author
  belongs_to :genre

  validates :title, presence: true
  validates :author, presence: true

  scope :by_genre, -> (genre_id) { where(genre_id: genre_id) }

  delegate :name, to: :genre, prefix: true, allow_nil: true
  delegate :name, to: :author, prefix: true, allow_nil: true

  def reviewed_by?(user)
    reviews.exists?(user: user)
  end

  def to_param
    "#{id}-#{title.parameterize}"
  end

  def update_avg_rating
    update(average_rating: reviews.average(:rating))
  end
end
