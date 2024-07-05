require 'rails_helper'

RSpec.feature "KnightManagement", type: :feature do
  scenario "User creates a new knight" do
    visit new_knight_path

    fill_in "Name", with: "Sir Test"
    check "Is active"
    fill_in "Number of quests", with: 5

    click_button "Create Knight"

    expect(page).to have_text("Knight was successfully created.")
    expect(page).to have_text("Sir Test")
  end

  scenario "User views a knight" do
    knight = FactoryBot.create(:knight, name: "Sir Test")

    visit knight_path(knight)

    expect(page).to have_text("Sir Test")
  end
end
