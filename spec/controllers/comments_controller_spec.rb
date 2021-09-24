require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "POST /" do
    it "responds with 200" do
      session[:user_id] = 1
      post :create, params: { comment: { message: "Hello, world!", user_id: 1}, post_id: 1 }
      expect(response).to redirect_to(posts_path)
    end

    it "creates a comment" do
      session[:user_id] = 1
      post :create, params: { comment: { message: "Hello, world!", user_id: 1}, post_id: 1 }
      expect(Comment.find_by(message: "Hello, world!")).to be
    end
  end
end
