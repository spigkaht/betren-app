class ChangeReferencesOnReturns < ActiveRecord::Migration[7.1]
  def change
    remove_reference :returns, :job, foreign_key: true
    add_reference :returns, :contract, null: false, index: true
  end
end
