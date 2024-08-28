class AddStoreToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :store, :string
  end
end
