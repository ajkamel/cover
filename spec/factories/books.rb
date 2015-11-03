FactoryGirl.define do
  factory :book do
    sequence(:title) { |n| "Book title #{n}" }
  end
end
