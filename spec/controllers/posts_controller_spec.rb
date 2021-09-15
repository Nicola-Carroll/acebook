require_relative '../rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /posts " do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "You should be able to successfully create a new post" do
    it "Accepts the parameters" do
      post :new_post, params: { post: { message: "Hello, world!" } }
      # We want the post request to redirect back to the GET page index
      expect(response).to redirect_to(index)
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
