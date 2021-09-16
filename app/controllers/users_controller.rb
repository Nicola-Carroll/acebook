class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    puts "did user save? #{@user.save}"
    if @user.save
      redirect_to users_url, notice: 'User created :D'
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
