class AddQuizIdToQuizzes < ActiveRecord::Migration
  def change
    add_reference :quizzes, :quiz, index: true, foreign_key: true
  end
end
