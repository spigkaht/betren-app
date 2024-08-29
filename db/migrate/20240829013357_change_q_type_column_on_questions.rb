class ChangeQTypeColumnOnQuestions < ActiveRecord::Migration[7.1]
  def change
    rename_column :questions, :type, :qtype
  end
end
