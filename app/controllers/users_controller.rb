class UsersController < ApplicationController
  def index
    if current_user.id == 1
      @users = User.all
      render :index
    else
      redirect_to current_user
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(strong_params)
    if @user.save
      flash[:notice] = "Post successfully created"
      redirect_to @user
    else
      flash[:notice] = "Post unsuccessfully created"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(strong_params)
      redirect_to @user
    else
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
