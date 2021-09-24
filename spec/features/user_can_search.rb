require 'rails_helper'
require 'helper_methods'

RSpec.feature "Search", type: :feature do

    before do
        add_new_sample_user
        visit login_path
        fill_in :password, with: 'griltheAnim4lz'
        fill_in :email, with: 'hilly@example.com'
        click_button 'Log In'
    end

    scenario "Can use the search bar" do
        fill_in "Search", with: "Boop"
        click_button(class: 'search-btn')
        expect(page).to have_current_path('/search?q=Boop')
    end
end