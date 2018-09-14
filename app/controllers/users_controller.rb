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
      flash[:notice] = "Post successfully created"
      session[:current_user_id] = @user.id
      redirect_to @user
    else
      flash[:notice] = "Post unsuccessfully created"
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
    @user.delete
    session.clear
    redirect_to users_path
  end

  def buy
    random = rand(1..Card.all.size)
    if found = Collection.find_by(card_id: random, user_id: current_user.id)
      found.increment!(:amount, 1)
    else
      Collection.create(card_id: random, user_id: current_user.id, amount: 1)
    end
    redirect_to collections_path
  end

  def buy_this
    if found = Collection.find_by(card_id: params[:card_id], user_id: current_user.id)
      found.increment!(:amount, 1)
    else
      Collection.create(card_id: random, user_id: current_user.id, amount: 1)
    end
    redirect_to collections_path
  end

  private

  def strong_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end
end
