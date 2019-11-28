# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Booking.destroy_all
Event.destroy_all
User.destroy_all

u1 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

u2 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

u3 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

u4 = User.create!(email: "emily.zhao@gmail.com", password: "12345678",
                  first_name: "Emily",
                  last_name: "Zhao",
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

u5 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

u6 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

u7 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

e1 = Event.create!(title: "Cosy Home Cooked Italian Dinner" ,
                   location: "Pudong New District, Shanghai",
                   date: Faker::Date.between(from: 1.month.ago, to: 1.month.from_now),
                   description: Faker::Restaurant.description,
                   cuisine: "italian",
                   price: [50,100,150,200].sample,
                   capacity: rand(3..10),
                   remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574751981/bemyguest/DIY_BRUSCHETTA_BAR-copy_mmq3ee.jpg",
                   user: u1
                   )


e2 = Event.create!(title: "Rustic BBQ dinner" ,
                   location: "JingAn District, Shanghai",
                   date: Faker::Date.between(from: 1.month.ago, to: 1.month.from_now),
                   description: Faker::Restaurant.description,
                   cuisine: "Australian",
                   price: [50,100,150,200].sample,
                   capacity: rand(3..10),
                   remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574751981/bemyguest/Anderson_Wolf_Chanterelle_Photography_andersonwolfrehearsal1074web_low_bmorbs.jpg",
                   user: u2
                   )


e3 = Event.create!(title: "Chilli Cook Off" ,
                   location: "Putuo District, Shanghai",
                   date: Faker::Date.between(from: 1.month.ago, to: 1.month.from_now),
                   description: Faker::Restaurant.description,
                   cuisine: "Sichuan",
                   price: [50,100,150,200].sample,
                   capacity: rand(3..10),
                   remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574751981/bemyguest/Chili_Cook-Off_Guide_-_The_Midwestival_ib6j9b.jpg",
                   user: u2
                   )


e4 = Event.create!(title: "Dumpling Dinner" ,
                   location: "Minghang District, Shanghai",
                   date: Faker::Date.between(from: 1.month.ago, to: 1.month.from_now),
                   description: Faker::Restaurant.description,
                   cuisine: "Shanghainese",
                   price: [50,100,150,200].sample,
                   capacity: rand(3..10),
                   remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574751981/bemyguest/6940302078_7a555dee8c_o_weu8hr.jpg",
                   user: u3
                   )

e5 = Event.create!(title: "Sushi Party" ,
                   location: "Minghang District, Shanghai",
                   date: Faker::Date.between(from: 1.month.ago, to: 1.month.from_now),
                   description: Faker::Restaurant.description,
                   cuisine: "Japanese",
                   price: [50,100,150,200].sample,
                   capacity: rand(3..10),
                   remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574754171/bemyguest/6a00d8342114db53ef01a3fcf9d523970b_tgyy5g.png",
                   user: u3
                   )


e6 = Event.create!(title: "Crawfish Boil Party" ,
                   location: "JingAn District, Shanghai",
                   date: Faker::Date.between(from: 1.month.ago, to: 1.month.from_now),
                   description: Faker::Restaurant.description,
                   cuisine: "American",
                   price: [50,100,150,200].sample,
                   capacity: rand(3..10),
                   remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574754345/bemyguest/wpid9068-HitherandThither_AshleyMuirBruhn-12_x1rxkg.jpg",
                   user: u4
                   )

b1 = Booking.create!(payment: true, user: u1, event: e5 )
b2 = Booking.create!(payment: true, user: u2, event: e4 )
b3 = Booking.create!(payment: true, user: u4, event: e2 )
b4 = Booking.create!(payment: true, user: u4, event: e5 )
b5 = Booking.create!(payment: true, user: u4, event: e4 )
b6 = Booking.create!(payment: true, user: u4, event: e2 )
b7 = Booking.create!(payment: true, user: u4, event: e5 )
b8 = Booking.create!(payment: true, user: u3, event: e4 )
b9 = Booking.create!(payment: true, user: u2, event: e2 )
b10 = Booking.create!(payment: true, user: u6, event: e5 )
b11 = Booking.create!(payment: true, user: u3, event: e4 )
b12 = Booking.create!(payment: true, user: u7, event: e2 )
b13 = Booking.create!(payment: true, user: u4, event: e5 )
b14 = Booking.create!(payment: true, user: u3, event: e4 )
b15 = Booking.create!(payment: true, user: u3, event: e2 )

Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u1, booking: b1)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u2, booking: b2)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b3)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b4)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b5)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b6)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b7)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u3, booking: b8)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u2, booking: b9)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u6, booking: b10)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u3, booking: b11)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u7, booking: b12)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b13)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u3, booking: b14)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u3, booking: b15)
puts "Created #{Event.count} events"
puts "Created #{User.count} users"
puts "Created #{Booking.count} booking"
puts "Created #{Review.count} review"
