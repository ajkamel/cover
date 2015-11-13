FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@gmail.com" }
    password 'sosecret'
  end
end
