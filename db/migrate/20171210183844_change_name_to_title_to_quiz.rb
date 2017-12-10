class ChangeNameToTitleToQuiz < ActiveRecord::Migration
  def change
    rename_column :quizzes, :name, :title
  end
end
