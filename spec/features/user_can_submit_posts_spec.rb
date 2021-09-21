require 'rails_helper'
require 'helper_methods'
RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    add_new_sample_user
    login_user
    visit "/posts/new"
    # click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end
end
