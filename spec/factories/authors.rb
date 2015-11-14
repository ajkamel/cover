FactoryGirl.define do
  factory :author do
    name 'Author Name'
    biography 'author biography'

    factory :author_with_books do
      transient do
        books_count 2
      end

      after(:create) do |author, evaluator|
        books = create_list(:book, evaluator.books_count)
        author.books << books
      end
    end
  end
end
