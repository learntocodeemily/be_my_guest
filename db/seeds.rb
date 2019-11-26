# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
User.destroy_all



u1 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name
                  )

Event.create!(title: Faker::Marketing.buzzwords ,
              location: Faker::Address.city,
              date: Date.today,
              description: Faker::Lorem.sentences,
              cuisine: ["chinese", "italian", "japanese", "french", "belgian"].sample,
              price: rand(20..200),
              capacity: rand(3..10),
              image: "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", user: u1)


u2 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name
                  )

u3 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name
                  )

u4 = User.create!(email: Faker::Internet.email, password: "12345678",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name
                  )

Event.create!(title: Faker::Marketing.buzzwords ,
              location: Faker::Address.city,
              date: Date.today,
              description: Faker::Lorem.sentences,
              cuisine: ["chinese", "italian", "japanese", "french", "belgian"].sample,
              price: rand(20..200),
              capacity: rand(3..10),
              image: "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", user: u2)




puts "Created #{Event.count} events"
puts "Created #{User.count} users"
