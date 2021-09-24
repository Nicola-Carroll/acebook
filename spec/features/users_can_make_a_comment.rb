require 'rails_helper'
require 'helper_methods'

RSpec.feature 'Commenting', type: :feature do
  before do
    add_new_sample_user
    create_a_post_with_comments
    visit login_path
    fill_in :password, with: 'griltheAnim4lz'
    fill_in :email, with: 'hilly@example.com'
    click_button 'Log In'
  end

  it 'Comments are hidden initially' do
    visit posts_path
    expect(page).to_not have_content('This is a comment')
  end

  # it 'Can view existing comments' do
  #   # p page.driver.browser
  #   visit posts_path
  #   click_link('show_comments_1')
  #   reload_page
  #   expect(page).to have_content('This is a comment')
  # end

  # scenario 'User can add a comment' do
  # click_link('show_comments_1')
  # fill_in :message, with: 'This is another comment'
  # expect(page).tot have_content('This is another comment')
  # end
end
