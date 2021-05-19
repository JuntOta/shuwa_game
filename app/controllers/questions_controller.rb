class QuestionsController < ApplicationController

  def index
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
  end
  
  private
  
  def question_params
    params.require(:question).permit(:video, :correct, :wrong_1, :wrong_2, :wrong_3, :hint)
  end

end
