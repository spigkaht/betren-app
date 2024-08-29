class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.string :content
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
