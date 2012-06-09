class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :index

      t.timestamps
    end
  end
end
