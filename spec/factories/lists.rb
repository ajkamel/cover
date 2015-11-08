FactoryGirl.define do
  factory :list do
    title 'MyString'
    description 'MyText'

    factory :list_with_books do
      transient do
        books_count 2
      end

      after(:create) do |list, evaluator|
        books = create_list(:book, evaluator.books_count)
        list.books << books
      end
    end
  end
end
