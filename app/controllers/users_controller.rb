class UsersController < ApplicationController
  skip_before_action :authorised
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
<<<<<<< HEAD
      redirect_to login_path, notice: 'User created :D'
=======
      redirect_to login_path, notice: 'Signed up successfully! Please login'
>>>>>>> 2126264909c5afe4beab4459fa2b18187d291f09
    else
      render 'new'
    end
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
        :email_confirmation
      )
  end
end
