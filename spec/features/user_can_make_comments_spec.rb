require 'rails_helper'

RSpec.feature "Comments", type: :feature do
    scenario "Can submit posts and view them" do
      visit "/login"
      fill_in "email"
      fill_in "password"
      click_button "Login"
      visit "/posts"
      first("a").click
      fill_in "Message", with: "Hello, world!"
      click_button "Submit"
      expect(page).to have_content("Hello, world!")
    end
  end
  