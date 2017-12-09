class AddAnswer2ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answer2, :string
  end
end
