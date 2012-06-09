class AddArchiveIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :archive_id, :string
  end
end
