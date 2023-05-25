require 'faker'
categories = ['chinese', 'italian', 'japanese', 'french', 'belgian']

puts 'Creating restaurants...'
5.times do
  restaurant = Restaurant.new(
    name:     Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.cell_phone,
    category:  categories.sample
  )
  restaurant.save!
end

puts 'Finished!'