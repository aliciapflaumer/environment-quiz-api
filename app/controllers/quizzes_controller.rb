class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:update, :destroy]

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.all
    # @quizzes = current_user.quizzes

    render json: @quizzes
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
    # render json: @quiz
    render json: Quiz.find(params[:id])
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    # @quiz = Quiz.new(quiz_params)
    @quiz = current_user.quizzes.build(quiz_params)

    if @quiz.save
      render json: @quiz, status: :created
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    # @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      render json: @quiz
      # head :no_content
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    # head :no_content
  end

  private

    def set_quiz
      # @quiz = Quiz.find(params[:id])
      @quiz = current_user.quizzes.find(params[:id])
    end

    def quiz_params
      params.require(:quiz).permit(:title, :user_id)
    end
end
