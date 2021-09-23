require 'rails_helper'
require 'helper_methods'

RSpec.describe UsersController, type: :controller do
  describe 'GET /new ' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'redirects to login when succesfully signed up' do
      post :create,
           params: {
             user: {
               first_name: 'Tom',
               last_name: 'Balm',
               username: 'Tommy',
               email: 'tom@example.com',
               password: 'griltheAnim4lz',
               profile_image: fixture_file_upload('test_image.jpg', 'image/jpg')
             }
           }
      expect(response).to redirect_to(login_path)
    end

    it 'alerts user with \'Signed up successfully! Please login\'' do
      post :create,
           params: {
             user: {
               first_name: 'Tom',
               last_name: 'Balm',
               username: 'Tommy',
               email: 'tom@example.com',
               password: 'griltheAnim4lz'
             }
           }
      expect(flash[:notice]).to match('Signed up successfully! Please login')
    end
  end

  describe 'REDIRECT /' do
    it 'renders if user is invalid' do
      post :create,
           params: {
             user: {
               first_name: '',
               last_name: '',
               username: '',
               email: '',
               password: ''
             }
           }
      expect(response).to have_http_status(200)
    end
  end
end
