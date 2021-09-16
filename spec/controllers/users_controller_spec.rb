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
    it 'responds with 200' do
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
      expect(response).to redirect_to(users_url) #redirects us to index?
    end

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

    # it 'creates a post' do
    #   user :create, params: { post: { message: 'Hello, world!' } }
    #   expect(User.find_by(message: 'Hello, world!')).to be
    # end
  end

  describe 'GET /login ' do
    it 'should be able to visit login route' do
      get :login
      expect(response).to have_http_status(200)
    end

    it 'successfully loged in - redirected to post overview route ' do
      add_new_sample_user
      post :login,
           params: {
             email: 'hilly@example.com',
             password: 'griltheAnim4lz'
           }
      expect(response).to redirect_to(posts_url)
    end

    it 'unable to login with invalid details' do
      post :login,
           params: {
             email: 'hilly@example.com',
             password: 'griltheAnim4lz'
           }
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
