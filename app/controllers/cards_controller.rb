class CardsController < ApplicationController
  def index 
    @cards = Card.all
  end

  def show 
    get_card
  end
  
  def new 
    @card = Card.new
    @title = "Create Card"
    get_theme_sets
    get_decks

    render :new
  end

  def create
    @card = Card.new(strong_params)
    if @card.save 
      redirect_to card_path(@card)
    else
      @title = "Create Card"
      render :new
    end
  end

  def edit 
    @title = "Edit Card"
    get_card
    get_theme_sets
    get_decks
  end

  def update
    get_card
    @card.update(strong_params)
    if @card.save 
      redirect_to card_path(@card)
    else
      @title = "Edit Card"
      get_card
      get_theme_sets
      get_decks
      render :edit 
    end
  end

  def destroy 
    get_card
    @card.destroy
    redirect_to cards_path
  end

  private 
  def strong_params
    params.require(:card).permit(:name, :description, :mana_cost, :theme_set_id, :deck_id)
  end

  def get_card
    @card = Card.find(params[:id])
  end

  def get_theme_sets
    @theme_sets = ThemeSet.all
  end

  def get_decks 
    @decks = Deck.all
  end
end
