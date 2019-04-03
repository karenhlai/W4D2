# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
COLORS = %w(gray orange brown black white)
SEX = ['M', 'F']

Cat.destroy_all
bigglesworth = Cat.create!(name: 'Mr. Bigglesworth', color: 'gray', birth_date: '2015/01/20', sex: 'M')
10.times do
  Cat.create!(birth_date: Faker::Date.birthday(0, 21), color: COLORS[rand(0..4)], name: Faker::Name.unique.name, sex: SEX[rand(0..1)])
end
