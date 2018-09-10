class ApplicationController < ActionController::Base
  helper_method :logged_in?
  def currect_user
    if session[:currect_user_id]
      @user = User.find(session[:currect_user_id])
    end
  end

  def logged_in?
    !!currect_user
  end
end
