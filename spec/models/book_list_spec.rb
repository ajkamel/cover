require 'rails_helper'

RSpec.describe BookList, type: :model do
  it { is_expected.to belong_to(:book) }
  it { is_expected.to belong_to(:list) }
  it { is_expected.to validate_presence_of(:list_id) }
  it { is_expected.to validate_presence_of(:book_id) }
end
