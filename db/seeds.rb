# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
School.destroy_all
Monster.destroy_all
Witcher.destroy_all

10.times do
  location = Location.create(name: Faker::Witcher.location, population: Faker::Number.between(100, 1500))

  10.times do
    monster = Monster.create(name: Faker::Witcher.monster, population: Faker::Number.between(50, 1000))
    monster.locations << location
    location.monsters << monster

    school = location.schools.create(name: Faker::Witcher.school)

    10.times do
      witcher = school.witchers.create(name: Faker::Witcher.witcher, age: Faker::Number.between(25, 60))
    end

  end
end