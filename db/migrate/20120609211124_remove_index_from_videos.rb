class RemoveIndexFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :index
      end

  def down
    add_column :videos, :index, :string
  end
end
