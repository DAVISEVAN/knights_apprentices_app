require 'rails_helper'

RSpec.feature "KnightShow", type: :feature do
    scenario "User visits the knight show page and sees the number of apprentices" do
        knight = FactoryBot.create(:knight, name: "Sir Lancelot", is_active: true, number_of_quests: 12) 
        FactoryBot.create(:apprentice, knight: knight)
        FactoryBot.create(:apprentice, knight: knight)

        visit knight_path(knight)

        expect(page).to have_content("Number of Apprentices: 2")
        expect(page).to have_text("Sir Lancelot")
        expect(page).to have_text("Active")
        expect(page).to have_text("Number of Quests: 12")
    end
end

    feature "KnightUpdate", type: :feature do
        scenario "User updates a knight" do
            knight = FactoryBot.create(:knight, name: "Sir Lancelot", is_active: true, number_of_quests: 12)

            visit knight_path(knight)
            expect(page).to have_link("Update Knight", href: edit_knight_path(knight))

            click_link "Update Knight"
            expect(page).to have_current_path(edit_knight_path(knight))

            fill_in "Name", with: "Sir Lancelot II"
            uncheck "Is active"
            fill_in "Number of quests", with: 15

            click_button "Update Knight"
            expect(page).to have_current_path(knight_path(knight))
            expect(page).to have_content("Sir Lancelot II")
            expect(page).to have_content("Active: false")
            expect(page).to have_content("Number of Quests: 15")
        end
    end