class UsersController < ApplicationController
  def login; end

  def new
    @user = User.new
  end

  def create
    @user = User.create(post_params)
    if @user.save
      redirect_to users_url
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
