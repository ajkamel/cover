FactoryGirl.define do
  factory :book do
    sequence(:title) { |n| "Book title #{n}" }
    description 'A story about cows'
  end
end
