class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def refresh_current_user
    user_id = current_user.id
    current_user = User.find(user_id)
  end
end
