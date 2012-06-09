class RemoveEmbedUrlFromPhotos < ActiveRecord::Migration
  def down
    remove_column :photos, :embed_url, :string
  end
end
