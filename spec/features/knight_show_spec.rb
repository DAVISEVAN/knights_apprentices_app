require 'rails_helper'

RSpec.feature "KnightShow", type: :feature do
    scenario "User visits the knight show page" do
        knight = FactoryBot.create(:knight, name: "Sir Lancelot", is_active: true, number_of_quests: 12) 

        visit knight_path(knight)

        expect(page).to have_text("Sir Lancelot")
        expect(page).to have_text("Active")
        expect(page).to have_text("Number of Quests: 12")
    end
end