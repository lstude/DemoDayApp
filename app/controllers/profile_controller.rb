class ProfileController < ApplicationController
  
  def index
    @user = current_user
    @questions = Question.find_all_by_category_id(params[:category_id])
    # @photo = Photo.find_by_user_id(params[:id])
  
  end
  
  
  
end
