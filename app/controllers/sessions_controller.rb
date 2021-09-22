class SessionsController < ApplicationController
  skip_before_action :authorised

  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to posts_url
    else
      flash[:invalid] = "Invalid email or password"   
      redirect_to login_path
    end
  end

  def destroy
    flash.clear
    session[:user_id] = nil
    redirect_to login_path
    flash[:loggedout] = "Successfully logged out"
  end

end
