class ChangeColumnsOnQuestions < ActiveRecord::Migration[7.1]
  def change
    remove_column :questions, :answer
    add_column :questions, :answer_bool, :boolean
    add_column :questions, :answer_text, :string
    add_column :questions, :answer_num, :float
  end
end
