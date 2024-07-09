require 'rails_helper'

RSpec.feature "KnightsIndex", type: :feature do
    scenario "User visits the knights index page" do
    knight1 = FactoryBot.create(:knight, name: "Sir Lancelot")
    knight2 = FactoryBot.create(:knight, name: "Sir Galahad")

    visit knights_path

    expect(knight2.name).to appear_before(knight1.name) 
    expect(page).to have_content("Created at: #{knight1.created_at.strftime("%B %d, %Y %H:%M")}")
    expect(page).to have_content("Created at: #{knight2.created_at.strftime("%B %d, %Y %H:%M")}")
    end
end

#     User Story 11, Parent Creation 

            # As a visitor
            # When I visit the Parent Index page
            # Then I see a link to create a new Parent record, "New Parent"
            # When I click this link
            # Then I am taken to '/parents/new' where I  see a form for a new parent record
            # When I fill out the form with a new parent's attributes:
            # And I click the button "Create Parent" to submit the form
            # Then a `POST` request is sent to the '/parents' route,
            # a new parent record is created,
            # and I am redirected to the Parent Index page where I see the new Parent displayed.
            # end
feature "Knight Creation", type: :feature do
    scenario "User creates a new knight" do
        visit knights_path
        click_link "New Knight"
        expect(page).to have_current_path(new_knight_path)

        fill_in "Name", with: "Sir Bedivere"
        check "Is active"
        fill_in "Number of quests", with: 3

        click_button "Create Knight"

        expect(page).to have_current_path(knights_path)
        expect(page).to have_content("Sir Bedivere")
    end
end