class AddPhotoToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :photo, :string
  end
end
