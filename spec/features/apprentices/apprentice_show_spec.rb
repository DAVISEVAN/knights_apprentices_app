require 'rails_helper'

RSpec.feature "ApprenticeShow", type: :feature do
    scenario "User visits the apprentice show page" do
      knight = FactoryBot.create(:knight)
      apprentice = FactoryBot.create(:apprentice, name: "Patsy", is_knighted: false, age: 18, knight: knight)

      visit apprentice_path(apprentice)

      expect(page).to have_text("Patsy")
      expect(page).to have_text("Knighted: false")
      expect(page).to have_text("Age: 18")
    end
end
    