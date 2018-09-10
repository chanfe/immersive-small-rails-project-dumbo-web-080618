class DecksController < ApplicationController
  def index
    if currect_user
      @decks = currect_user.decks
    else
      @decks = Deck.all
    end
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(strong_params)
    if @deck.save
      redirect_to @deck
    else
      render :new
    end
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])
    if @deck.update(strong_params)
      redirect_to @deck
    else
      render :edit
    end
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to decks_path
  end

  private

  def strong_params
    params.require(:deck).permit(:name, :user_id)
  end

end
