puts 'Cleaning database'
Restaurant.destroy_all

puts 'Creating restaurants...'

10.times do
  restaurants = [
    Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      category: %w[chinese italian japanese french belgian].sample,
      phone_number: Faker::PhoneNumber.cell_phone_in_e164
    )
  ]
  restaurants.each do |restaurant|
    puts "Created #{restaurant.id}"
  end
end

# first_restaurant = { name: Faker::Restaurant.name, address: Faker::Address.street_address,
#                      category: %w[chinese italian japanese french belgian].sample,
#                      phone_number: Faker::PhoneNumber.cell_phone_in_e164 }

# second_restaurant = { name: Faker::Restaurant.name, address: Faker::Address.street_address,
#                       category: %w[chinese italian japanese french belgian].sample,
#                       phone_number: Faker::PhoneNumber.cell_phone_in_e164 }

# [first_restaurant, second_restaurant].each do |restaurant|
#   restaurant = Restaurant.create!(restaurant)
#   puts "Created #{restaurant.name}"
# end

puts 'Finished'
