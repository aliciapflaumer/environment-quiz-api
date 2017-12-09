class AddAnswer1ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answer1, :string
  end
end
