class ChangePhotosOnbJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :photo8, :string
    remove_column :jobs, :photo0
  end
end
