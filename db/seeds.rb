require 'faker'
require 'open-uri'

# FAKER PARA IMAGEM FIXA
# if Book.count.zero?
#   10.times do
#     book = Book.create(
#       title: Faker::Book.title,
#       author: Faker::Book.author,
#       description: Faker::Lorem.paragraph,
#       opnion: Faker::Lorem.paragraph,
#       rating: Faker::Number.between(from: 1, to: 5),
#       read: Faker::Boolean.boolean,
#       wishlist: Faker::Boolean.boolean
#     )
#     #book.picture.attach(io: File.open('./public/rails.png'), filename: 'rails.png')
#   end
# end

# FAKER PARA IMAGENS DINÂMICAS
def image_fetcher
  URI.open(Faker::Avatar.image)
  rescue
  URI.open("https://robohash.org/sitsequiquia.png?size=300x300&set=set1")
end

30.times do |n|
  book = Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author,
    description: Faker::Lorem.paragraph,
    opnion: Faker::Lorem.paragraph,
    rating: Faker::Number.between(from: 1, to: 5),
    read: Faker::Boolean.boolean,
    wishlist: Faker::Boolean.boolean
  )

  book.picture.attach({
    io: image_fetcher,
    filename: "#{n}_faker_image.jpg"
  })
end