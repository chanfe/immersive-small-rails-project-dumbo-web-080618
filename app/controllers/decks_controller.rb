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
      create_cards
      redirect_to @deck
    else
      render :new
    end
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    # byebug
    @deck = Deck.find(params[:id])
    if @deck.update(strong_params)
      CardDeck.all.select{|e| e.deck_id == @deck.id}.each{|e| e.destroy}
      create_cards
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
    params.require(:deck).permit(:name, :user_id, :card_ids)
  end

  # def create_cards
  #   for temp in 0...params[:deck][:card_ids].size do
  #     CardDeck.create(card_id: params[:deck][:card_ids][temp], deck_id: @deck.id )
  #   end
  # end

  #"card_ids"=>{"1"=>"0", "2"=>"0", "3"=>"4"}
  def create_cards 
    current_deck_id = Deck.all.find{|deck| deck.name == params[:deck][:name]}.id
    user_id = params[:deck][:user_id].to_i
    params[:card_ids].each{|k, v| CardDeck.create(card_id: k.to_i, deck_id: current_deck_id, copies: v.to_i)}
  end

end
