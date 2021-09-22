require 'rails_helper'
require 'helper_methods'
RSpec.feature "Comments", type: :feature do
    scenario "Can submit posts and view them" do
      add_new_sample_user
      login_user
      visit "/posts/"
      first(".comment").click_link('Comments')
      fill_in 'Add comment:', with: "Hello, world!"
      click_button "Submit"
      expect(page).to have_content("Hello, world!")
    end
  end
  