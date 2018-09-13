class UsersController < ApplicationController
  def index

    if current_user.nil?
      redirect_to '/'
    else
      if current_user.id == 1
        @users = User.all
        render :index
      else
        redirect_to current_user
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @title = "Create Account"
  end

  def create
    @user = User.new(strong_params)
    if @user.save
      redirect_to @user
    else
      @title = "Create Account"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @title = "Edit Account"
  end

  def update
    @user = User.find(params[:id])
    if @user.update(strong_params)
      redirect_to @user
    else
      @title = "Edit Account"
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def strong_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
