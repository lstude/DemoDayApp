class Photo < ActiveRecord::Base
  attr_accessible :embed_url, :question_id, :text
  
  belongs_to :question
end
