class AddReturnDateToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :last_return, :datetime
  end
end
