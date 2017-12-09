class RemoveQuestionFromQuestions < ActiveRecord::Migration
  def change
    remove_reference :questions, :question, index: true, foreign_key: true
  end
end
