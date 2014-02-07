class Api::V1::QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :update, :destroy]
  respond_to :json

  # GET /quizzes
  def index
    respond_with Quiz.all
  end

  # GET /quizzes/1
  def show
    respond_with @quiz
  end

  # POST /quizzes
  def create
    @quiz = Quiz.new(quiz_params)

    if @quiz.save
      respond_with @quiz, status: :created, location: [:api, :v1, @quiz]
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quizzes/1
  def update
    if @quiz.update(quiz_params)
      respond_with @quiz, status: :ok, location: [:api, :v1, @quiz]
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quizzes/1
  def destroy
    @quiz.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def quiz_params
    params.require(:quiz).permit(:duration, :score)
  end
end
