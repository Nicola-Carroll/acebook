require_relative '../rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "/POST" do
    it "Creates a post" do
      session[:user_id] = 1
      post :create, 
      params: { 
        post: {
          message: "Hello, world!", 
          user_id: 1
          }
        }
      expect(response).to redirect_to(posts_path)
    end
  end
end
  # describe "/DELETE" do 
  #   let(:post1) {
  #     Post.create(
  #       message: "Hello, world!", 
  #       user_id: 1
  
  #   it "deletes a post" do 
  #     session[:user_id] = 1
  #     post1.destroy
  #     p "HERE"
  #     p post1
  #     expect(Post.find_by(message: "Hello, world!")).to be
  #   end 
  # end 
#end

