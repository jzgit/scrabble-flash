class Api::V1::CardsController < ApplicationController
  def index
    render json: Card.all
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
