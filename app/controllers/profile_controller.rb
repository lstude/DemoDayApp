class ProfileController < ApplicationController
  
  def index
    @user = current_user
    @questions = Question.find_all_by_category_id(params[:category_id])
    @videos = Video.find_all_by_user_id(params[:user_id])
  
  end
  
  
  
end
