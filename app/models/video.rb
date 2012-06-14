class Video < ActiveRecord::Base
  attr_accessible :archive_id, :user_id, :question_id
  belongs_to :user
  belongs_to :question
end

