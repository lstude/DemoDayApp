class CreateTextStories < ActiveRecord::Migration
  def change
    create_table :text_stories do |t|
      t.string :text
      t.integer :question_id

      t.timestamps
    end
  end
end
