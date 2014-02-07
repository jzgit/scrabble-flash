class Api::V1::CardsController < ApplicationController
  before_action :set_card, only: [:show, :update, :destroy]
  respond_to :json

  # GET /cards
  def index
    render json: Card.all
  end

  # GET /cards/1
  def show
    respond_with Card.find(params[:id])
  end

  # POST /cards
  def create
    @card = Card.new(card_params)

    if @card.save
      respond_with @card, status: :created, location: [:api, :v1, @card]
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards/1
  def update
    if @card.update(card_params)
      respond_with @card, status: :ok, location: [:api, :v1, @card]
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_card
    @card = Card.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def card_params
    params.require(:card).permit(:letter)
  end
end
