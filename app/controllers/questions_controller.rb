class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.valid?
      redirect_to root_path
    else
      render new
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :text, :category_id).merge(user_id: current_user.id)
  end

end
