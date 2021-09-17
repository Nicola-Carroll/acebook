require 'rails_helper'

RSpec.feature "Comments", type: :feature do
    scenario "Can submit posts and view them" do
      visit "http://localhost:3000/login" # need to change default domain in capybara/rspec
      fill_in "email", with: "joebloggs@example.com"
      fill_in "password", with: "dQlRIF"
      click_button "Login"
      first("a").click
      fill_in "comment_message", with: "Hello, world!"
      click_button "Submit"
      expect(page).to have_content("Hello, world!")
    end
  end
  