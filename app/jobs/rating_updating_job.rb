class RatingUpdatingJob < ActiveJob::Base
  queue_as :default

  def perform(book)
    book.update_avg_rating
  end
end
