class Api::V1::CardsController < ApplicationController
  respond_to :json

  def index
    cards = Card.all
    render json: cards
  end

  def create
    card = Card.new(card_params)
    if card.save
      render json: card
    else
    render status: 422
    end
  end

  protected
  def card_params
    params.require(:card).permit(:letter)
  end
end
