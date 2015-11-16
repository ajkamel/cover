require 'rails_helper'

RSpec.describe RatingUpdatingJob, type: :job do
  describe '#perform' do
    it 'calls book.update_avg_rating' do
      book = create(:book)
      allow(book).to receive(:update_avg_rating)

      RatingUpdatingJob.perform_now(book)

      expect(book).to have_received(:update_avg_rating)
    end
  end
end
