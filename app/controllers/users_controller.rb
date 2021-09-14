class UsersController < ApplicationController
  def login; end

  def new
    @user = User.new
  end

  def create
    @post = User.create(post_params)
    if @post.save
      redirect_to #to login?
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:user).permit(:username, :password,
       :first_name, :last_name, :email)
  end
end
