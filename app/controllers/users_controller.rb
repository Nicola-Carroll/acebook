class UsersController < ApplicationController
  skip_before_action :authorised
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to login_path, notice: 'Signed up successfully! Please login'
    else
      render 'new', notice: 'Oops something went wront.. Please try again!'
    end
  end

  def show
    @user= User.find_by(username: params[:username])
  end

  private

  def user_params
    params
      .require(:user)
      .permit(
        :username,
        :password,
        :password_confirmation,
        :first_name,
        :last_name,
        :email,
        :email_confirmation,
        :profile_image,
        :pronouns,
        :bio
      )
  end
end
