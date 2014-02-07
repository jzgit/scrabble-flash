class Api::V1::ChoicesController < ApplicationController
  before_action :set_choice, only: [:show, :update, :destroy]
  respond_to :json

  # GET /choices
  def index
    if params[:ids]
      respond_with Choice.find(params[:ids])
    else
      respond_with Choice.all
    end
  end

  # GET /choices/1
  def show
    respond_with @choice
  end

  # POST /choices
  def create
    @choice = Choice.new(choice_params)

    if @choice.save
      respond_with @choice, status: :created, location: [:api, :v1, @choice]
    else
      render json: @choice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /choices/1
  def update
    if @choice.update(choice_params)
      respond_with @choice, status: :ok, location: [:api, :v1, @choice]
    else
      render json: @choice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /choices/1
  def destroy
    @choice.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_choice
    @choice = Choice.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def choice_params
    params.require(:choice).permit(:word, :correct, :card_id)
  end
end
