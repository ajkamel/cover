require 'rails_helper'

RSpec.describe Book, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to have_many(:book_lists) }
  it { is_expected.to have_many(:lists).through(:book_lists) }

  it { is_expected.to belong_to(:author) }
end
