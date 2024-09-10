class AddMorePhotosToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :photo0, :string
    add_column :jobs, :photo5, :string
    add_column :jobs, :photo6, :string
    add_column :jobs, :photo7, :string
  end
end
