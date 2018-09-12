class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user
  def current_user
    if session[:currect_user_id]
      @user = User.find(session[:currect_user_id])
    end
  end

  def logged_in?
    !!current_user
  end
end
