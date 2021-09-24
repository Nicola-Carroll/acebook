require 'rails_helper'
require 'helper_methods'

RSpec.feature 'Profile page', type: :feature do
  scenario 'Can visit profile page' do
    visit login_path
    fill_in :password, with: 'dQlRIF'
    fill_in :email, with: 'mendeldurie0@example.com'
    click_button(class: 'submit-button')
    click_link(class: 'visit-profile')
    expect(page).to have_current_path('/Mendel%20Durie')
  end
end
