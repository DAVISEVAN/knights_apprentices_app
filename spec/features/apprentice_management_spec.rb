require 'rails_helper'

RSpec.feature "ApprenticeManagement", type: :feature do
  scenario "User creates a new apprentice" do
    knight = FactoryBot.create(:knight)

    visit new_apprentice_path

    fill_in "Name", with: "Test Apprentice"
    check "Is knighted"
    fill_in "Age", with: 18
    select knight.name, from: "Knight"

    click_button "Create Apprentice"

    expect(page).to have_text("Apprentice was successfully created.")
    expect(page).to have_text("Test Apprentice")
  end

  scenario "User views an apprentice" do
    apprentice = FactoryBot.create(:apprentice, name: "Test Apprentice")

    visit apprentice_path(apprentice)

    expect(page).to have_text("Test Apprentice")
  end
end
