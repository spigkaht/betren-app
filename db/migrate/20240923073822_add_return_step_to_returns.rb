class AddReturnStepToReturns < ActiveRecord::Migration[7.1]
  def change
    add_column :returns, :return_step, :string
    add_reference :returns, :job, null: false, foreign_key: true
  end
end
