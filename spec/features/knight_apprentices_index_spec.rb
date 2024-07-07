require 'rails_helper' 

RSpec.feature "KnightApprenticesIndex", type: :feature do
    scenario "User visits the knight apprentices index page" do
        knight1 = FactoryBot.create(:knight, name: "Sir Lancelot")
        knight2 = FactoryBot.create(:knight, name: "Sir Galahad")
        apprentice1 = FactoryBot.create(:apprentice, name: "Patsy", knight: knight)
        apprentice2 = FactoryBot.create(:apprentice, name: "Robin", knight: knight)

        visit knight_apprentices_path(knight)

        expect(page).to have_text("Patsy")
        expect(page).to have_content("Knighted: false")
        expect(page).to have_content("Age: 18")
        expect(page).to have_text("Robin")
        expect(page).to have_content("Knighted: false") 
        expect(page).to have_content("Age: 20")
    end
end