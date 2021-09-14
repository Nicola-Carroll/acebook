require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET /login ' do
    it 'should be able to login' do
      get :login
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /new ' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'responds with 200' do
      post :create, params: { user: { 
        first_name: 'Tom',
        last_name: 'Balm',
        username: 'Tommy',
        email: 'tom@example.com',
        password: 'griltheAnim4lz' } 
      }
      expect(response).to redirect_to(users_url) #redirects us to index?
    end

    # it 'creates a post' do
    #   user :create, params: { post: { message: 'Hello, world!' } }
    #   expect(User.find_by(message: 'Hello, world!')).to be
    # end
  end

  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
