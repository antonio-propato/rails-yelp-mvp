# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
petit_maison = { name: 'La Petit Maison', address: '53-54 Brooks Mews, London W1K 4EG', phone_number: '02039999999', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '02039999999', category: 'italian' }
endo = { name: 'Endo', address: '8th Floor, The Helios, Television Centre, 101 Wood Ln, London W12 7FR', phone_number: '02039999999', category: 'japanese' }
isabel = { name: 'Isabel', address: '26 Albemarle Street, London, W1S 4HY', phone_number: '02039999999', category: 'french' }
park_chinoi = { name: 'Park Chinoi', address: '17 Berkeley St, London W1J 8EA', phone_number: '02039999999', category: 'chinese' }

[petit_maison, pizza_east, endo, isabel, park_chinoi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
