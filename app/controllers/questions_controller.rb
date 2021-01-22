class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :question_set, only: [:show, :edit, :update]

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

  def show
  end

  def edit
  end

  def destroy
    question = Question.find(params[:id])
    if question.user_id == current_user.id
      if question.destroy
        redirect_to root_path
      else
        render :index
      end
    else
      render :index
    end
  end
  
  private

  def question_params
    params.require(:question).permit(:title, :text, :category_id).merge(user_id: current_user.id)
  end

  def question_set
    @question = Question.find(params[:id])
  end



end
