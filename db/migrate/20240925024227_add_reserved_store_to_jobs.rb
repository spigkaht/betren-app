class AddReservedStoreToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :reserved_store, :string
  end
end
