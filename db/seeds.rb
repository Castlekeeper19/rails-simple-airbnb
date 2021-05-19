# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "...clearing database"

Flat.destroy_all

puts "...Creating flats"

20.times do
  Flat.create(
    name: Faker::Fantasy::Tolkien.location,
    address: Faker::Address.street_address,
    description: Faker::Fantasy::Tolkien.poem,
    price_per_night: rand(100..200),
    number_of_guests: rand(1..10)
    )
end
puts "... created #{Flat.count} flats"

