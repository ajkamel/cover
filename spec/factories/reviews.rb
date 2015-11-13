FactoryGirl.define do
  factory :review do
    book
    user
    rating 4
    body 'review body text'
  end
end
