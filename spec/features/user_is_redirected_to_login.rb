require 'rails_helper'

RSpec.feature 'Unauthorised user', type: :feature do
  scenario 'User not logged in is redirected' do
    # go straight to posts without logging in
    visit "/posts"
    expect(page).to have_current_path(root_path)
  end
end