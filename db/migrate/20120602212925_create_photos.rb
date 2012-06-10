class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :text
      t.integer :question_id

      t.timestamps
    end
  end
end
