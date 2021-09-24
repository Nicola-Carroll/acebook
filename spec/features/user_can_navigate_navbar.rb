require 'rails_helper'
require 'helper_methods'

RSpec.feature "Navbar", type: :feature do
  scenario "user can use navbar" do
    add_new_sample_user
    login
    click_link "New Post"
    expect(page).to have_current_path(new_post_path)
  end
end
