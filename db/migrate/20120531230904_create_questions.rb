class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :inquiry
      t.integer :category_id

      t.timestamps
    end
  end
end
