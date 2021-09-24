require 'rails_helper'
require 'helper_methods'

RSpec.feature 'Logging in', type: :feature do
  scenario 'Can login as existing user' do
    visit login_path
    fill_in :password, with: 'dQlRIF'
    fill_in :email, with: 'mendeldurie0@example.com'
    click_button(class: 'submit-button')
    expect(page).to have_current_path(posts_path)
  end

  scenario 'Cannot login with wrong details' do
    visit login_path
    fill_in :password, with: 'nooo'
    fill_in :email, with: 'mendeldurie0@example.com'
    click_button(class: 'submit-button')
    expect(page).to have_current_path(login_path)
  end
end
