require 'rails_helper'

RSpec.feature "ApprenticesIndex", type: :feature do
    scenario "User visits the apprentices index" do
        apprentice1 = FactoryBot.create(:apprentice, name: "Patsy")
        apprentice2 = FactoryBot.create(:apprentice, name: "Robin")

        visit apprentices_path

        expect(page).to have_text("Patsy")
        expect(page).to have_text("Robin")
    end
end
