require 'rails_helper'

RSpec.feature 'Signing up', type: :feature do
  scenario 'Can create new user' do
    visit '/signup'
    fill_in :user_username, with: 'TestAccount'
    fill_in :user_first_name, with: 'Jeremy'
    fill_in :user_last_name, with: 'Test'
    fill_in :user_password, with: 'Password1'
    fill_in :user_password_confirmation, with: 'Password1'
    fill_in :user_email, with: 'test@gmail.com'
    fill_in :user_email_confirmation, with: 'test@gmail.com'
    click_button 'Create User'
    expect(User.last.username).to eq 'TestAccount'
  end

  scenario 'Can create new user & alerts user with notice' do
    visit '/signup'
    fill_in :user_username, with: 'TestAccount'
    fill_in :user_first_name, with: 'Jeremy'
    fill_in :user_last_name, with: 'Test'
    fill_in :user_password, with: 'Password1'
    fill_in :user_password_confirmation, with: 'Password1'
    fill_in :user_email, with: 'test@gmail.com'
    fill_in :user_email_confirmation, with: 'test@gmail.com'
    click_button 'Create User'
    expect(page).to have_content('Signed up successfully! Please login')
  end
end
