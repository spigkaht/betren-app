class AddLastContractToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :last_contract, :string
  end
end
