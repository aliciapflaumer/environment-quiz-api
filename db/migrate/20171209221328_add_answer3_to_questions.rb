class AddAnswer3ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answer3, :string
  end
end
