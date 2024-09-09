class RemoveColumnsFromJobs < ActiveRecord::Migration[7.1]
  def change
    remove_column :jobs, :opnm
    remove_column :jobs, :fuel
    remove_column :jobs, :hours
  end
end
