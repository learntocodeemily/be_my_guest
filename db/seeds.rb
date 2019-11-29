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
u8 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

u9 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                  )

u10 = User.create!(email: Faker::Internet.email, password: "12345678",
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                   )

u11 = User.create!(email: Faker::Internet.email, password: "12345678",
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                   )

u12 = User.create!(email: Faker::Internet.email, password: "12345678",
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                   )

u13 = User.create!(email: Faker::Internet.email, password: "12345678",
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                   )

u14 = User.create!(email: Faker::Internet.email, password: "12345678",
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   remote_avatar_url: "https://source.unsplash.com/featured/200x200/?{people}"
                   )
u15 = User.create!(email: Faker::Internet.email, password: "12345678",
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

b1 = Booking.create!(payment: true, user: u6, event: e1 )
b2 = Booking.create!(payment: true, user: u15, event: e1 )
b3 = Booking.create!(payment: true, user: u14, event: e1 )
b4 = Booking.create!(payment: true, user: u1, event: e2 )
b5 = Booking.create!(payment: true, user: u2, event: e2 )
b6 = Booking.create!(payment: true, user: u4, event: e2 )
b7 = Booking.create!(payment: true, user: u5, event: e2 )
b8 = Booking.create!(payment: true, user: u6, event: e2 )
b9 = Booking.create!(payment: true, user: u3, event: e3 )
b10 = Booking.create!(payment: true, user: u10, event: e3 )
b11 = Booking.create!(payment: true, user: u11, event: e3 )
b12 = Booking.create!(payment: true, user: u12, event: e3 )
b13 = Booking.create!(payment: true, user: u9, event: e4 )
b14 = Booking.create!(payment: true, user: u8, event: e4 )
b15 = Booking.create!(payment: true, user: u4, event: e4 )
b16 = Booking.create!(payment: true, user: u3, event: e4 )
b17 = Booking.create!(payment: true, user: u7, event: e4 )
b18 = Booking.create!(payment: true, user: u4, event: e5 )
b19 = Booking.create!(payment: true, user: u15, event: e5 )
b20 = Booking.create!(payment: true, user: u14, event: e5 )
b21 = Booking.create!(payment: true, user: u3, event: e5 )
b22 = Booking.create!(payment: true, user: u4, event: e6 )
b23 = Booking.create!(payment: true, user: u10, event: e6 )


Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u6, booking: b1)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u15, booking: b2)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u14, booking: b3)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u1, booking: b4)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u2, booking: b5)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b6)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u5, booking: b7)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u6, booking: b8)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u3, booking: b9)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u10, booking: b10)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u11, booking: b11)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u12, booking: b12)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u9, booking: b13)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u8, booking: b14)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b15)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u3, booking: b16)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u7, booking: b17)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b18)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u15, booking: b19)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u14, booking: b20)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u3, booking: b21)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u4, booking: b22)
Review.create!(comment: Faker::Restaurant.review,
               rating: rand(1..5), user: u10, booking: b23)


puts "Created #{Event.count} events"
puts "Created #{User.count} users"
puts "Created #{Booking.count} booking"
puts "Created #{Review.count} review"
