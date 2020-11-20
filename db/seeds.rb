# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"




puts "seeding users"
User.create!(email: "user1@example.com", password: "1234567")
User.create!(email: "user2@example.com", password: "1234567")
User.create!(email: "user3@example.com", password: "1234567")
User.create!(email: "user4@example.com", password: "1234567")

puts "users injected, injecting tanks with pictures"

file = URI.open('https://21stcenturyasianarmsrace.files.wordpress.com/2015/04/indian-centurion-tank.jpg')
Tank.create!(name: "Centurion", weight_in_kg: 5000, description: "First 'Universal Tank' (MBT) Culmination of the WWII cruiser tanks.", price_per_day: 50, capacity: 4, user_id: 1)
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.super-hobby.de/zdjecia/4/3/5/18463_rd.jpg')
Tank.create!(name: "T-54", weight_in_kg: 7000, description: "USSR's First Generation of MBT.", price_per_day: 100, capacity: 100, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.reDBqPZHJDaOjpjdltBW3wHaEw%26pid%3DApi&f=1')
Tank.create!(name: "M47 Patton", weight_in_kg: 1000, description: "A development of the M46 Patton and M26 Pershing tanks.", price_per_day: 12, capacity: 1, user_id: 3 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://lh3.googleusercontent.com/-_-2EJlCS1aQ/TYHItJ65EXI/AAAAAAAAABM/kxHkYKutOHU/s1600/Type59.jpg')
Tank.create!(name: "Type 59", weight_in_kg: 10000, description: "A further development of the T-54 tank.", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/9/9c/Leo2A5.JPG')
Tank.create!(name: "Leopard", weight_in_kg: 26000, description: "Der Kampfpanzer (in der öffentlichen Wahrnehmung auch meist nur Panzer) ist das Hauptwaffensystem der Panzertruppe. Kampfpanzer sind die am stärksten gepanzerte und am flexibelsten bewaffnete Panzergattung und bilden am Anfang des 21. Jahrhunderts noch immer das Rückgrat der Landstreitkräfte.
Typischerweise sind Kampfpanzer gepanzerte Gleiskettenfahrzeuge mit einer Kanone als Hauptwaffe in einem rundum drehbaren Turm. Sie sollen einen möglichst guten Kompromiss aus Panzerung, Feuerkraft und Beweglichkeit darstellen. Ihre Aufgabe ist die Bekämpfung gegnerischer Panzer und befestigter Stellungen. Beim Kampf in urbanem Gebiet unterstützen sie auch häufig die Infanterie durch ihre Feuerkraft und…", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://static-store.gaijin.net/img/screenshots/B4E559FF-2A3C-4A53-97F7-1F7FD3BB61D4/big/4.jpg')
Tank.create!(name: "Sho't", weight_in_kg: 4000, description: "Israeli designation of the 105 mm L7 armed Centurion tank..", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.fllt.org/wp-content/uploads/2014/12/1-snapping-turtle.jpg')
Tank.create!(name: "Tortioisio", weight_in_kg: 7, description: "Achtug! bites", price_per_day: 20, capacity: 1, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff9%2FLeopard_1A5.jpg%2F1200px-Leopard_1A5.jpg')
Tank.create!(name: "Leopard 1", weight_in_kg: 62000, description: "Israeli designation of the 105 mm L7 armed Centurion tank..", price_per_day: 50, capacity: 8, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://i.pinimg.com/originals/06/75/b0/0675b07b2b34650894353817ca2d49ea.jpg')
Tank.create!(name: "Frank the Tank", weight_in_kg: 82, description: ":)", price_per_day: 0, capacity: 0, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F12015220%2Fimages%2F50292_reap.jpg&f=1&nofb=1')
Tank.create!(name: "Armadillon", weight_in_kg: 282, description: ":)", price_per_day: 1000, capacity: 1, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://21stcenturyasianarmsrace.files.wordpress.com/2015/04/indian-centurion-tank.jpg')
Tank.create!(name: "Centurion", weight_in_kg: 5000, description: "First 'Universal Tank' (MBT) Culmination of the WWII cruiser tanks.", price_per_day: 50, capacity: 4, user_id: 1)
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.super-hobby.de/zdjecia/4/3/5/18463_rd.jpg')
Tank.create!(name: "T-54", weight_in_kg: 7000, description: "USSR's First Generation of MBT.", price_per_day: 100, capacity: 100, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.reDBqPZHJDaOjpjdltBW3wHaEw%26pid%3DApi&f=1')
Tank.create!(name: "M47 Patton", weight_in_kg: 1000, description: "A development of the M46 Patton and M26 Pershing tanks.", price_per_day: 12, capacity: 1, user_id: 3 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://lh3.googleusercontent.com/-_-2EJlCS1aQ/TYHItJ65EXI/AAAAAAAAABM/kxHkYKutOHU/s1600/Type59.jpg')
Tank.create!(name: "Type 59", weight_in_kg: 10000, description: "A further development of the T-54 tank.", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/9/9c/Leo2A5.JPG')
Tank.create!(name: "Leopard", weight_in_kg: 26000, description: "Der Kampfpanzer (in der öffentlichen Wahrnehmung auch meist nur Panzer) ist das Hauptwaffensystem der Panzertruppe. Kampfpanzer sind die am stärksten gepanzerte und am flexibelsten bewaffnete Panzergattung und bilden am Anfang des 21. Jahrhunderts noch immer das Rückgrat der Landstreitkräfte.
Typischerweise sind Kampfpanzer gepanzerte Gleiskettenfahrzeuge mit einer Kanone als Hauptwaffe in einem rundum drehbaren Turm. Sie sollen einen möglichst guten Kompromiss aus Panzerung, Feuerkraft und Beweglichkeit darstellen. Ihre Aufgabe ist die Bekämpfung gegnerischer Panzer und befestigter Stellungen. Beim Kampf in urbanem Gebiet unterstützen sie auch häufig die Infanterie durch ihre Feuerkraft und…", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://static-store.gaijin.net/img/screenshots/B4E559FF-2A3C-4A53-97F7-1F7FD3BB61D4/big/4.jpg')
Tank.create!(name: "Sho't", weight_in_kg: 4000, description: "Israeli designation of the 105 mm L7 armed Centurion tank..", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.fllt.org/wp-content/uploads/2014/12/1-snapping-turtle.jpg')
Tank.create!(name: "Tortioisio", weight_in_kg: 7, description: "Achtug! bites", price_per_day: 20, capacity: 1, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff9%2FLeopard_1A5.jpg%2F1200px-Leopard_1A5.jpg')
Tank.create!(name: "Leopard 1", weight_in_kg: 62000, description: "Israeli designation of the 105 mm L7 armed Centurion tank..", price_per_day: 50, capacity: 8, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://i.pinimg.com/originals/06/75/b0/0675b07b2b34650894353817ca2d49ea.jpg')
Tank.create!(name: "Frank the Tank", weight_in_kg: 82, description: ":)", price_per_day: 0, capacity: 0, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F12015220%2Fimages%2F50292_reap.jpg&f=1&nofb=1')
Tank.create!(name: "Armadillon", weight_in_kg: 282, description: ":)", price_per_day: 1000, capacity: 1, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://21stcenturyasianarmsrace.files.wordpress.com/2015/04/indian-centurion-tank.jpg')
Tank.create!(name: "Centurion", weight_in_kg: 5000, description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.", price_per_day: 50, capacity: 4, user_id: 1)
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.super-hobby.de/zdjecia/4/3/5/18463_rd.jpg')
Tank.create!(name: "T-54", weight_in_kg: 7000, description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.", price_per_day: 100, capacity: 100, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.reDBqPZHJDaOjpjdltBW3wHaEw%26pid%3DApi&f=1')
Tank.create!(name: "M47 Patton", weight_in_kg: 1000, description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.", price_per_day: 12, capacity: 1, user_id: 3 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://lh3.googleusercontent.com/-_-2EJlCS1aQ/TYHItJ65EXI/AAAAAAAAABM/kxHkYKutOHU/s1600/Type59.jpg')
Tank.create!(name: "Type 59", weight_in_kg: 10000, description: "ALorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/9/9c/Leo2A5.JPG')
Tank.create!(name: "Leopard", weight_in_kg: 26000, description: "Der Kampfpanzer (in der öffentlichen Wahrnehmung auch meist nur Panzer) ist das Hauptwaffensystem der Panzertruppe. Kampfpanzer sind die am stärksten gepanzerte und am flexibelsten bewaffnete Panzergattung und bilden am Anfang des 21. Jahrhunderts noch immer das Rückgrat der Landstreitkräfte.
Typischerweise sind Kampfpanzer gepanzerte Gleiskettenfahrzeuge mit einer Kanone als Hauptwaffe in einem rundum drehbaren Turm. Sie sollen einen möglichst guten Kompromiss aus Panzerung, Feuerkraft und Beweglichkeit darstellen. Ihre Aufgabe ist die Bekämpfung gegnerischer Panzer und befestigter Stellungen. Beim Kampf in urbanem Gebiet unterstützen sie auch häufig die Infanterie durch ihre Feuerkraft und…", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://static-store.gaijin.net/img/screenshots/B4E559FF-2A3C-4A53-97F7-1F7FD3BB61D4/big/4.jpg')
Tank.create!(name: "Sho't", weight_in_kg: 4000, description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.", price_per_day: 50, capacity: 4, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.fllt.org/wp-content/uploads/2014/12/1-snapping-turtle.jpg')
Tank.create!(name: "Tortioisio", weight_in_kg: 7, description: "Achtug! bites", price_per_day: 20, capacity: 1, user_id: 1 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff9%2FLeopard_1A5.jpg%2F1200px-Leopard_1A5.jpg')
Tank.create!(name: "Leopard 1", weight_in_kg: 62000, description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.", price_per_day: 50, capacity: 8, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://i.pinimg.com/originals/06/75/b0/0675b07b2b34650894353817ca2d49ea.jpg')
Tank.create!(name: "Frank the Tank", weight_in_kg: 82, description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.", price_per_day: 0, capacity: 0, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F12015220%2Fimages%2F50292_reap.jpg&f=1&nofb=1')
Tank.create!(name: "Armadillon", weight_in_kg: 282, description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.", price_per_day: 1000, capacity: 1, user_id: 2 )
Tank.last.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

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
