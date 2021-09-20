class SessionsController < ApplicationController
  skip_before_action :authorised

  def new
    p "params when new is called #{params}"
  end

  def create
    p "params when create is called #{params}"
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to posts_url
    else
      p "user login not valid so redirect to login path"
      flash[:alert] = "Invalid email or password"   
      redirect_to login_path
    end
  end

  def destroy
    flash.clear
    session[:user_id] = nil
    redirect_to login_path
  end

end
