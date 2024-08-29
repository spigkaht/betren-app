class ChangeTypeColumnOnQuestions < ActiveRecord::Migration[7.1]
  def change
    rename_column :questions, :question_type, :type
  end
end
