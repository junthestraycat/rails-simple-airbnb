require 'faker'

puts "Cleaning the DB"

Flat.destroy_all

puts "Seeding the DB"
CATEGORY = %w((chinese italian japanese french belgian))
5.times do
  Flat.create!(
    name: Faker::Coffee.blend_name,
    address: Faker::Coffee.origin,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(50..200),
    number_of_guests: rand(1..3)
  )
  puts "created flats"
end

puts "done!"
