class AddFieldsToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :opnm, :string
    add_column :jobs, :fuel, :float
    add_column :jobs, :hours, :float
    add_column :jobs, :photo1, :string
    add_column :jobs, :photo2, :string
    add_column :jobs, :photo3, :string
    add_column :jobs, :photo4, :string
  end
end
