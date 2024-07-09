require 'faker'

# Clear existing data
Knight.destroy_all
Apprentice.destroy_all

# Create knights
knight1 = Knight.create!(
  name: "Sir Lancelot",
  is_active: true,
  number_of_quests: 10,
  created_at: 2.days.ago
)
knight2 = Knight.create!(
  name: "Sir Galahad",
  is_active: true,
  number_of_quests: 5,
  created_at: 1.day.ago
)

# Create apprentices for knight1
3.times do
  Apprentice.create!(
    name: Faker::Name.name,
    is_knighted: false,
    age: rand(18..25),
    knight: knight1
  )
end

# Create apprentices for knight2
2.times do
  Apprentice.create!(
    name: Faker::Name.name,
    is_knighted: false,
    age: rand(18..25),
    knight: knight2
  )
end

puts "Seeded database with #{Knight.count} knights and #{Apprentice.count} apprentices."
