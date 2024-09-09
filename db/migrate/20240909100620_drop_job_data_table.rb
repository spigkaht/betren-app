class DropJobDataTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :job_data
  end
end
