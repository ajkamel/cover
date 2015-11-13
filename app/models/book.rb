class Book < ActiveRecord::Base
  has_many :book_lists
  has_many :lists, through: :book_lists
  has_many :reviews
  belongs_to :author

  validates :title, presence: true

  def reviewed_by?(user)
    reviews.exists?(user: user)
  end
end
