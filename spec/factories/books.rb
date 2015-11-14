FactoryGirl.define do
  factory :book do
    sequence(:title) { |n| "Book title #{n}" }
    description 'A story about cows'

    trait :with_genre do
      genre
    end

    transient do
      genre_name nil
    end

    after(:create) do |book, evaluator|
      if evaluator.genre_name
        book.genre = Genre.find_by(name: evaluator.genre_name) ||
          create(:genre, name: evaluator.genre_name)

        book.save!
      end
    end
  end
end
