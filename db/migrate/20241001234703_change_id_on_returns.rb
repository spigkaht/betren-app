class ChangeIdOnReturns < ActiveRecord::Migration[7.1]
  def change
    rename_column :returns, :contract_id, :contract_cntr
    change_column :returns, :contract_cntr, :string
  end
end
