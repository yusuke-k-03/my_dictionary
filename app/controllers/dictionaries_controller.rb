class DictionariesController < ApplicationController
  def index
    @dictionaries = Dictionary.order("dictionaries.created_at DESC")
  end

  def new
    @dictionary = Dictionary.new
  end

  def create
    @dictionary = Dictionary.new(dictionary_params)
    if @dictionary.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @dictionary = Dictionary.find(params[:id])
  end

  def edit
    @dictionary = Dictionary.find(params[:id])
  end

  def update
    @dictionary = Dictionary.find(params[:id])
    if @dictionary.update(dictionary_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    dictionary = Dictionary.find(params[:id])
    dictionary.destroy
    redirect_to root_path
  end


  private
  
  def dictionary_params
    params.require(:dictionary).permit(:title, :text, :category_id)
  end

end
