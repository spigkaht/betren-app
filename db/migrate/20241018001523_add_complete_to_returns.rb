class AddCompleteToReturns < ActiveRecord::Migration[7.1]
  def change
    add_column :returns, :complete, :boolean
  end
end
