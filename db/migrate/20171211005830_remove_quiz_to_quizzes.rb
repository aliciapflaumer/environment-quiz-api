class RemoveQuizToQuizzes < ActiveRecord::Migration
  def change
    remove_reference :quizzes, :quiz, index: true, foreign_key: true
  end
end
