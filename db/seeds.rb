# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "seeding users"
User.create!(email: "user1@example.com", password: "1234567")
User.create!(email: "user2@example.com", password: "1234567")
User.create!(email: "user3@example.com", password: "1234567")
User.create!(email: "user4@example.com", password: "1234567")

puts "users injected, injecting tanks without pictures"

Tank.create!(name: "Centurion", weight_in_kg: 5000, description: "First 'Universal Tank' (MBT) Culmination of the WWII cruiser tanks.", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.create!(name: "T-54", weight_in_kg: 7000, description: "USSR's First Generation of MBT.", price_per_day: 100, capacity: 100, user_id: 2 )
Tank.create!(name: "M47 Patton", weight_in_kg: 1000, description: "A development of the M46 Patton and M26 Pershing tanks.", price_per_day: 12, capacity: 1, user_id: 3 )
Tank.create!(name: "Type 59", weight_in_kg: 10000, description: "A further development of the T-54 tank.", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.create!(name: "Sho't", weight_in_kg: 4000, description: "Israeli designation of the 105 mm L7 armed Centurion tank..", price_per_day: 50, capacity: 4, user_id: 1 )

puts "Tanks injected, bookings incoming"

Booking.create!(from_date: (Date.today+5), to_date: (Date.today+8), user_id: 2, tank_id: 3 )
Booking.create!(from_date: (Date.today+4), to_date: (Date.today+9), user_id: 2, tank_id: 5 )
Booking.create!(from_date: (Date.today+10), to_date: (Date.today+100), user_id: 2, tank_id: 3 )
Booking.create!(from_date: (Date.today+0), to_date: (Date.today+365), user_id: 2, tank_id: 1 )
Booking.create!(from_date: (Date.today+2), to_date: (Date.today+3), user_id: 4, tank_id: 4 )
Booking.create!(from_date: (Date.today+5), to_date: (Date.today+8), user_id: 1, tank_id: 3 )
Booking.create!(from_date: (Date.today-5), to_date: (Date.today-3), user_id: 1, tank_id: 3 )
Booking.create!(from_date: (Date.today+10), to_date: (Date.today+13), user_id: 3, tank_id: 4 )

puts "bookings injected"
