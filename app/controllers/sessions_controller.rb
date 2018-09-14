class SessionsController < ApplicationController
  # one routes for login in
  def new
    # GET /login
    if current_user.nil?
      render :new
    else
      redirect_to user_path(current_user)
    end
  end

  def create
    #POST /sessions

    @user = User.find_by(username: params["username"])
    if @user && @user.authenticate(params["password"])
      # We're logged in
      session[:current_user_id] = @user.id
      redirect_to decks_path
    else
      render :new
      # redirect_to "/login"
    end
  end

  def destroy
    # session.delete :current_user_id
    session.clear
    redirect_to "/login"
  end
end
