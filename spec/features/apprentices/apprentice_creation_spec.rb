require 'rails_helper'

RSpec.feature "ApprenticeCreation", type: :feature do
  scenario "User creates a new apprentice" do
    knight = FactoryBot.create(:knight, name: "Sir Lancelot")

    visit knight_apprentices_path(knight)
    click_link "Create Apprentice"

    fill_in "Name", with: "Patsy"
    check "Is knighted"
    fill_in "Age", with: 20

    click_button "Create Apprentice"

    expect(page).to have_current_path(knight_apprentices_path(knight))
    expect(page).to have_content("Patsy")
  end

  scenario "User updates an apprentice" do
    knight = FactoryBot.create(:knight, name: "Sir Lancelot")
    apprentice = FactoryBot.create(:apprentice, name: "Patsy", knight: knight)

    visit apprentice_path(apprentice)
    click_link "Update Apprentice"

    fill_in "Name", with: "Patsy the Brave"
    uncheck "Is knighted"
    fill_in "Age", with: 22

    click_button "Update Apprentice"

    expect(page).to have_current_path(apprentice_path(apprentice))
    expect(page).to have_content("Patsy the Brave")
    expect(page).to have_content("Knighted: false")
    expect(page).to have_content("Age: 22")
  end
end
