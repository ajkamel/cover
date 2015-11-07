require 'faker'

Book.transaction do
  50.times do
    adj = Faker::Hacker.adjective
    noun = Faker::Hacker.noun
    color = Faker::Commerce.color
    title = "#{adj} #{noun} #{color}"
    paragraph_count = rand(3) + 1
    desc = Faker::Lorem.paragraph paragraph_count
    image = Faker::Avatar.image

    Book.create title: title, description: desc, cover_image_url: image
  end
end
