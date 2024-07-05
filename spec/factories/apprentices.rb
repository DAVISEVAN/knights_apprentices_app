
require 'faker'

FactoryBot.define do
    factory :apprentice do
      name { Faker::Name.name }
      is_knighted { false }
      age { 18 }
      association :knight
    end
  end
  