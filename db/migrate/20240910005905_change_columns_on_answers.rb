class ChangeColumnsOnAnswers < ActiveRecord::Migration[7.1]
  def change
    remove_column :answers, :content
    add_column :answers, :answers, :jsonb
  end
end
