class Photo < ActiveRecord::Base
  attr_accessible :embed_url, :question_id, :text, :image
  
  belongs_to :user
  belongs_to :question
  
  mount_uploader :image, ImageUploader
end
