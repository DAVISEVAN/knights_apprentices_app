require 'rails_helper'

RSpec.feature "KnightsIndex", type: :feature do
    scenario "User visits the knights index page" do
        knight1 = FactoryBot.create(:knight, name: "Sir Lancelot")
        knight2 = FactoryBot.create(:knight, name: "Sir Galahad")

        visit knights_path

        expect(page).to have_content("Sir Lancelot") 
        expect(page).to have_content("Sir Galahad")
    end
end