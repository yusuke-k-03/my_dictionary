class DictionariesController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :dictionary_set, only: [:show, :edit, :update]

  def index
    @dictionaries = Dictionary.order('dictionaries.created_at DESC')
    @questions = Question.order('questions.created_at DESC')
  end

  def new
    @dictionary = Dictionary.new
  end

  def create
    @dictionary = Dictionary.new(dictionary_params)
    if @dictionary.save
      redirect_to "/users/#{current_user.id}"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @dictionary.update(dictionary_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def destroy
    dictionary = Dictionary.find(params[:id])

    if dictionary.user_id == current_user.id
      if dictionary.destroy
        redirect_to user_path
      else
        render :index
      end
    else
      render :index
    end
  end

  def search
    @dictionaries = Dictionary.search(params[:keyword])
  end

 

  private

  def dictionary_params
    params.require(:dictionary).permit(:title, :text, :category_id).merge(user_id: current_user.id)
  end

  def dictionary_set
    @dictionary = Dictionary.find(params[:id])
  end

end
