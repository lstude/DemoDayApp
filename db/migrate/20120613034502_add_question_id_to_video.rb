class AddQuestionIdToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :question_id, :integer
  end
end
