class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  before_action :authorised

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def authorised
    flash[:alert] = "Please signup or login to view this page"
    redirect_to root_path unless logged_in?
    # also raise flash message to say login or signup
 end
end
