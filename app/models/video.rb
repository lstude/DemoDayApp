class Video < ActiveRecord::Base
  attr_accessible :archive_id, :user_id
  belongs_to :user
end

