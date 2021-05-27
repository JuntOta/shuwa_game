class QuestionsController < ApplicationController

  def index
    @question = Question.offset( rand(Question.count) ).first
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
  end

  private
  
  def question_params
    params.require(:question).permit(:video, :correct, :wrong_1, :wrong_2, :wrong_3, :hint)
  end

end
