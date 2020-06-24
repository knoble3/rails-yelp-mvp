# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurant1 = {name: 'Superfood', address: '123 Batu Bolong', phone_number: '909 382 8374', category: 'japanese'}
restaurant2 = {name: 'Yang Chow', address: '456 Pentai Lingon', phone_number: '949 624 8754', category: 'chinese'}
restaurant3 = {name: 'Le Petit', address: '87 bordeaux', phone_number: '310 737 3589', category: 'french'}
restaurant4 = {name: 'Simons Place', address: '34 Brussels', phone_number: '951 628 8319', category: 'belgian'}
restaurant5 = {name: 'La Barracca', address: '56 Canggu', phone_number: '714 478 5500', category: 'italian'}

[ restaurant1, restaurant2, restaurant3, restaurant4, restaurant5 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
