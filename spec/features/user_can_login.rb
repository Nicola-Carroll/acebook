require 'rails_helper'
require 'helper_methods'

RSpec.feature 'Logging in', type: :feature do
  scenario 'Can login as existing user' do
    add_new_sample_user
    visit login_path
    fill_in :password, with: 'griltheAnim4lz'
    fill_in :email, with: 'hilly@example.com'
    click_button 'Login'
    # expect(page).to have_current_path(posts_path)
    expect(page).to have_content("HilliBilly")
  end

  # scenario 'Flash message when credentials are incorrect' do
  #   add_new_sample_user
  #   expect(response).to render_template(:new)
  #   expect(flash[:notice]).to match(/^Email and password do not match/)
  # end
end
