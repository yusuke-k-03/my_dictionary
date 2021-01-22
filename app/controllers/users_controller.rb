class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user.name
    @dictionaries = current_user.dictionaries.order('dictionaries.created_at DESC')
    @questions = current_user.questions.order('questions.created_at DESC')
  end
end
