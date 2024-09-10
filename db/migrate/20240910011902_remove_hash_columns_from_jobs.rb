class RemoveHashColumnsFromJobs < ActiveRecord::Migration[7.1]
  def change
    remove_column :jobs, :bool_fields
    remove_column :jobs, :accessory_fields
  end
end
