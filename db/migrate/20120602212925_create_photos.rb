class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :text
      t.integer :question_id
      t.string :image

      t.timestamps
    end
  end
end
