require 'rails_helper'

RSpec.describe List, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
end
