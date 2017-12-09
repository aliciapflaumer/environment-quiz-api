class AddAnswer4ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answer4, :string
  end
end
