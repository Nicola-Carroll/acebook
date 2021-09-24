require 'rails_helper'
require 'helper_methods'

RSpec.feature "Search", type: :feature do

    before do
        add_new_sample_user
        visit login_path
        fill_in :password, with: 'griltheAnim4lz'
        fill_in :email, with: 'hilly@example.com'
        click_button 'Login'
    end

    scenario "Can use the search bar" do

    end
end