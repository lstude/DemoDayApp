class Question < ActiveRecord::Base
  attr_accessible :category_id, :inquiry
  
  belongs_to :category
  has_many :text_stories
  has_many :photos
  has_many :videos
end
