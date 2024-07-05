
require 'faker'

FactoryBot.define do
    factory :knight do
      name { Faker::Name.name }
      is_active { true }
      number_of_quests { 0 }
    end
  end
  