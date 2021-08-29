# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
  book = Book.create(
    picture: File.open(File.join(Rails.root, "react.jpg")),
    title: Faker::Book.title,
    author: Faker::Book.author,
    description: Faker::Lorem.paragraph,
    opnion: Faker::Lorem.paragraph,
    rating: Faker::Number.between(from: 1, to: 5),
    read: Faker::Boolean.boolean,
    wishlist: Faker::Boolean.boolean
  )
end