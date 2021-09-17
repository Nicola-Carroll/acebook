require 'rails_helper'
require 'helper_methods'

RSpec.feature 'Signing up', type: :feature do
  scenario 'Can create new user' do
    add_new_sample_user
    visit login_path
    fill_in :password, with: 'griltheAnim4lz'
    fill_in :email, with: 'hilly@example.com'
    click_button 'Login'
    expect(page).to have_current_path(posts_path)
  end
end
