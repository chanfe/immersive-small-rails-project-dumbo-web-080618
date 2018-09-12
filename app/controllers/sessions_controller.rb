class SessionsController < ApplicationController
  # one routes for login in
  def new
    # GET /login
    render :new
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
    session.delete :current_user_id
    redirect_to "/login"
  end
end
