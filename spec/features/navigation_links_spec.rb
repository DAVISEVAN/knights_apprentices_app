require 'rails_helper'

RSpec.feature 'Navigation links', type: :feature do
    scenario "User will see the navigation links to Apprentice Index on every page" do
        visit knights_path
        expect(page).to have_link("Apprentices Index", href: apprentices_path) 

        visit apprentices_path
        expect(page).to have_link("Apprentices Index", href: apprentices_path)

        visit root_path
        expect(page).to have_link("Apprentices Index", href: apprentices_path)
    end

    scenario "User will see the navigation links to Knight Index on every page" do
        visit knights_path
        expect(page).to have_link("Knights Index", href: knights_path)

        visit apprentices_path
        expect(page).to have_link("Knights Index", href: knights_path)

        visit root_path
        expect(page).to have_link("Knights Index", href: knights_path)
    end

    scenario "User will see the link to the knight's apprentice index page on the knight show page" do
        knight = FactoryBot.create(:knight, name: "Sir Lancelot")
        visit knight_path(knight)
        expect(page).to have_link("Apprentices", href: knight_apprentices_path(knight))
    end
end