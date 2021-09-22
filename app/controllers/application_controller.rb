class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  helper_method :user_avatar
  before_action :authorised

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def user_avatar(user_id)
    user = User.find(user_id)
    if user.profile_image.attached?
      user.profile_image
    else
      'default_avatar.jpg'
    end
  end

  def authorised
    flash[:alert] = "Please signup or login to view this page"
    redirect_to root_path unless logged_in?
    # also raise flash message to say login or signup
  end
end
