puts 'Cleaning the db...'

Restaurant.destroy_all

puts 'db is clean'

puts 'creating restaurants...'

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )

  puts "#{restaurant.id}-#{restaurant.name} was created"
end
