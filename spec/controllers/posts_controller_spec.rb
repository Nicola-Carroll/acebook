require_relative '../rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /posts " do
    it "responds with 200" do
      post :create, params: {message: "Hello, world!", user_id: 1}
      expect(response).to redirect_to(posts_path)
    end
  end
  # describe "Post" do
  #   it "creates a post" do
  #     post :create, params: { post: { message: "Hello, world!" } }
  #     expect(Post.find_by(message: "Hello, world!")).to be
  #   end
  # end
  describe "user is not signed in" do

    it 'alerts please sign in' do
      session[:user_id] = nil
      get :index
      expect(flash[:alert]).to match('Please signup or login to view this page')
    end

  end

end





# # test fails a user_id is hardcoded
  # describe "You should be able to successfully create a new post" do
  #   it "Accepts the parameters" do
  #     post :create, params: { post: { message: "Hello, world!", user_id: 1 } }
  #     # We want the post request to redirect back to the GET page index
  #     expect(response).to redirect_to('/posts')
  #   end
  # end
