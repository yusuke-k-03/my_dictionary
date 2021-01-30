class LikesController < ApplicationController
  before_action :answer_params

  def create

    Like.create(user_id: current_user.id, answer_id: params[:id])
 
  end

  def destroy

    Like.find_by(user_id: current_user.id, answer_id: params[:id]).destroy
   
  end

  private

  def answer_params
    @answer = Answer.find(params[:id])
  end 

end
