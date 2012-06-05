class AddUserIdToTextStories < ActiveRecord::Migration
  def change
    add_column :text_stories, :user_id, :integer
  end
end
