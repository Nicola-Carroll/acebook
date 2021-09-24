require 'rails_helper'
require 'helper_methods'

RSpec.feature "Navbar", type: :feature do
  scenario "user can naviagte to new post" do
    add_new_sample_user
    login
    click_link "New Post"
    expect(page).to have_current_path(new_post_path)
  end
  scenario "user can naviagte to feed" do
    add_new_sample_user
    login
    click_link "Feed"
    expect(page).to have_current_path(posts_path)
  end
  scenario "user can naviagte to logout" do
    add_new_sample_user
    login
    click_link "Log Out"
    expect(page).to have_current_path(login_path)
  end
  scenario "user can naviagte to logout" do
    visit '/'
    click_link "Log In"
    expect(page).to have_current_path(login_path)
  end
  scenario "user can naviagte to signup" do
    visit '/'
    click_link "Sign Up"
    expect(page).to have_current_path(signup_path)
  end
end
