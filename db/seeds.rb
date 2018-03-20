# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Contact.create!(name: "pratik", number: "7738059924")

99.times do |n|
   name  = Faker::Name.name
   number = Faker::Number.number(10)
Contact.create!(name: name, number: number)
 end
