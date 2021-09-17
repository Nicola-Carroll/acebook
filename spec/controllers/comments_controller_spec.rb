require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "POST /" do
    it "responds with 200" do
      post :create, params: { comment: { message: "Hello, world!", user_id: 1}, post_id: 1 }
      expect(response).to redirect_to(post_path(Post.find(1)))
    end

    it "creates a comment" do
      post :create, params: { comment: { message: "Hello, world!", user_id: 1}, post_id: 1 }
      expect(Comment.find_by(message: "Hello, world!")).to be
    end
  end
end
