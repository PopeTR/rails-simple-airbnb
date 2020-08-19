# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
big_flat = { name: "Spacious 4 bed with seaview", address: "7 Boundary St, London E2 7JE", capacity: 3, price: "$200", URL: "https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200"}
medium_flat =  { name: "Leafy surf pad", address: "56A Shoreditch High St, London E1 6PQ", capacity: 2, price: "$100", URL: "https://images.unsplash.com/photo-1493809842364-78817add7ffb?w=1200"}
small_flat = { name: "Cosy penthouse suite", address: "Tonbridge High Street, Tonbridge, TN10 9SN", capacity: 1, price: "$50", URL: "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=1200"}

[ big_flat, medium_flat, small_flat ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
