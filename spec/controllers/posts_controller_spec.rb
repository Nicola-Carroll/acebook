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
  describe "/DELETE" do 
    let(:post1) { Post.create(
        message: "Hello, world!", 
        user_id: 1)}
  
    it "deletes a post" do 
      session[:user_id] = 1
      p post1
      delete :destroy, 
      params: {
        id: 5
      }
      expect(Post.find_by(id: 5)).to be nil
    end 
end
  describe "user is not signed in" do

    it 'alerts please sign in' do
      session[:user_id] = nil
      get :index
      expect(flash[:alert]).to match('Please signup or login to view this page')
    end

end

end