class AddOperatorToReturns < ActiveRecord::Migration[7.1]
  def change
    add_column :returns, :opid, :string
    add_column :returns, :opnm, :string
  end
end
