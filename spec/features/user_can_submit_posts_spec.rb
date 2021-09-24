require 'rails_helper'
require 'helper_methods'

RSpec.feature "Post", type: :feature do
  scenario "Can submit new posts and view them" do
    add_new_sample_user
    login
    click_link "New Post"
    fill_in "message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end
end
