class CardsController < ApplicationController

  def create
    @deck = Deck.find(params[:deck_id])
    @card = Card.new(params[:front, :back])
    @deck.cards  << @card
  end

  def new

  end

  def edit

  end

  def show
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id])
  end

  def update

  end

  def destroy

  end

end
