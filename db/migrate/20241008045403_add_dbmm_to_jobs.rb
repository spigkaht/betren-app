class AddDbmmToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :dbmm, :integer
  end
end
