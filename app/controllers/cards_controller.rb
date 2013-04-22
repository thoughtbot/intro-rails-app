class CardsController < ApplicationController

  def show
    @deck = find_deck
    @card = @deck.cards.find(params[:id])
    # Could also be written as:
    # @card = Card.find(params[:id])
  end

  def new
    @deck = find_deck
    @card = @deck.cards.new
  end

  def create
    @deck = find_deck
    @card = @deck.cards.new(params[:card])
    @card.save
    redirect_to [@deck, @card]
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    @card.update_attributes(params[:card])
    redirect_to [@card.deck, @card]
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to deck_path params[:deck_id]
  end

  private
    def find_deck
      Deck.find(params[:deck_id])
    end

end
