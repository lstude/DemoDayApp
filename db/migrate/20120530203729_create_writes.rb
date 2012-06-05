class CreateWrites < ActiveRecord::Migration
  def change
    create_table :writes do |t|
      t.string :category
      t.string :category_question
      t.string :story_text

      t.timestamps
    end
  end
end
