class AddCaptionToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :caption, :string
  end
end
