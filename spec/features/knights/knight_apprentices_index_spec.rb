require 'rails_helper'

RSpec.feature "KnightApprenticesIndex", type: :feature do
  scenario "User visits the knight apprentices index page for knight1" do
    knight1 = FactoryBot.create(:knight, name: "Sir Lancelot")
    knight2 = FactoryBot.create(:knight, name: "Sir Galahad")
    apprentice1 = FactoryBot.create(:apprentice, name: "Patsy", knight: knight1)
    apprentice2 = FactoryBot.create(:apprentice, name: "Robin", knight: knight2)

    visit knight_apprentices_path(knight1)

    expect(page).to have_text("Patsy")
    expect(page).to have_content("Knighted: false")
    expect(page).to have_content("Age: 18")
    expect(page).not_to have_text("Robin")
  end

  scenario "User visits the knight apprentices index page for knight2" do
    knight1 = FactoryBot.create(:knight, name: "Sir Lancelot")
    knight2 = FactoryBot.create(:knight, name: "Sir Galahad")
    apprentice1 = FactoryBot.create(:apprentice, name: "Patsy", knight: knight1)
    apprentice2 = FactoryBot.create(:apprentice, name: "Robin", knight: knight2)

    visit knight_apprentices_path(knight2)

    expect(page).to have_text("Robin")
    expect(page).to have_content("Knighted: false")
    expect(page).to have_content("Age: 18")
    expect(page).not_to have_text("Patsy")
  end
end
