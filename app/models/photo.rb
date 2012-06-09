class Photo < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :embed_url, :question_id, :text, :image, :user_id
=======
  attr_accessible :question_id, :text, :image
>>>>>>> fe03dc6ff27c8d67605eb7b66bc84a2f786fa501
  
  belongs_to :user
  belongs_to :question
  
  mount_uploader :image, ImageUploader
end
