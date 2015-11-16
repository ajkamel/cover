class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :book, :user, presence: true
  validates :rating, inclusion: 1..5

  delegate :email, to: :user, prefix: true

  after_commit :update_avg_rating

  private

  def update_avg_rating
    RatingUpdatingJob.perform_later(book)
  end
end
