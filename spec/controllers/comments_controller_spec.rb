require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe 'POST /' do
    it 'responds with 200' do
      post :create,
           params: {
             comment: {
               message: 'Hello, world!',
               user_id: 1
             },
             post_id: 1
           }
      expect(response).to redirect_to(post_path(Post.find(1)))
    end

    it 'creates a comment' do
      post :create,
           params: {
             comment: {
               message: 'Hello, world!',
               user_id: 1
             },
             post_id: 1
           }
      expect(Comment.find_by(message: 'Hello, world!')).to be
    end
  end

  describe '#show' do
    it 'shows comments' do
      session[:user_id] = 1
      Comment.create(user_id: 1, post_id: 1, message: 'This is a comment')
      get :show, xhr: true, format: 'js', params: { id: 1 }
      expect(response).to have_http_status(200)
    end
  end
end
