class RenameTitleToContentInQuestions < ActiveRecord::Migration[6.0]
  def change
    rename_column :questions, :title, :content
    add_column :questions, :question_type, :string
    add_column :questions, :answer, :string
  end
end
