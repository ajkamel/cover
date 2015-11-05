require 'rails_helper'

RSpec.describe Book, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to have_many(:book_lists).dependent(:destroy) }
  it { is_expected.to have_many(:lists).through(:book_lists) }
end
