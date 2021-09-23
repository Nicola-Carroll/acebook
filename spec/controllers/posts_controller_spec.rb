require_relative '../rails_helper'

RSpec.describe PostsController, type: :controller do
  # describe "GET /posts " do
  #   it "responds with 200" do
  #     get :index
  #     expect(response).to have_http_status(200)
  #   end
  # end

  # # test fails a user_id is hardcoded
  # describe "You should be able to successfully create a new post" do
  #   it "Accepts the parameters" do
  #     post :create, params: { post: { message: "Hello, world!", user_id: 1 } }
  #     # We want the post request to redirect back to the GET page index
  #     expect(response).to redirect_to('/posts')
  #   end
  # end

  describe 'user is not signed in' do
    it 'alerts please sign in' do
      session[:user_id] = nil
      get :index
      expect(flash[:alert]).to match('Please signup or login to view this page')
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

# it "creates a post" do
#   post :create, params: { post: { message: "Hello, world!" } }
#   expect(Post.find_by(message: "Hello, world!")).to be
# end

# describe "GET /" do
#   it "responds with 200" do
#     get :index
#     expect(response).to have_http_status(200)
#   end
# end
