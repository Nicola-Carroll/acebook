require_relative '../rails_helper'

RSpec.describe PostsController, type: :controller do

  describe 'user is not signed in' do
    it 'alerts please sign in' do
      session[:user_id] = nil
      get :index
      expect(flash[:alert]).to match('Please signup or login to view this page')
    end
  end

  describe "POST /" do
    it "Creates a post" do
      session[:user_id] = 1
      post :create, 
      params: { 
        post: {
          message: "Hello, world!", 
          user_id: 1, 
          post_image: fixture_file_upload('test_image.jpg', 'image/jpg')
          }
        }
      expect(response).to redirect_to(posts_path)
    end
  end

  describe '#update' do
    it 'can like a post' do
      session[:user_id] = 1
      patch :update, params: { id: '1', like: 'true' }
      expect(Post.find(1).likes).to eq(1)
    end

    it 'can dislike a post' do
      session[:user_id] = 1
      patch :update, params: { id: '1', dislike: 'true' }
      expect(Post.find(1).likes).to eq(-1)
    end
  end
end

