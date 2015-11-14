require 'faker'

Book.delete_all
Author.delete_all
List.delete_all
Genre.delete_all

Genre.transaction do
  names = []
  10.times { names.push("#{Faker::Hacker.ingverb} books") }
  names = names.uniq
  names.each do |name|
    Genre.create name: name
  end
end

Author.transaction do
  10.times do
    name = Faker::Name.name
    paragraph_count = rand(3) + 1
    biography = Faker::Lorem.paragraph paragraph_count
    Author.create name: name, biography: biography
  end
end

Book.transaction do
  50.times do |n|
    author = Author.all.sample
    genre = Genre.all.sample
    adj = Faker::Hacker.adjective
    noun = Faker::Hacker.noun
    color = Faker::Commerce.color
    title = "#{adj} #{noun} #{color}"
    paragraph_count = rand(3) + 1
    desc = Faker::Lorem.paragraph paragraph_count
    image = Faker::Avatar.image
    published_on = n.years.ago

    Book.create title: title, description: desc, cover_image_url: image,
                published_on: published_on, author: author, genre: genre
  end
end

List.transaction do
  10.times do
    books = Book.all.sample 6
    adj = Faker::Hacker.adjective
    noun = Faker::Hacker.noun
    title = "#{adj} #{noun}"
    description = Faker::Hacker.say_something_smart

    list = List.create title: title, description: description
    list.books << books
  end
end
