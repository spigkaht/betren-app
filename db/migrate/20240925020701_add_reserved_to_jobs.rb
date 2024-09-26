class AddReservedToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :reserved, :datetime
  end
end
