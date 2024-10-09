class AddPhotoUploadedToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :photo_uploaded, :boolean
    add_column :jobs, :photo_uploaded_1, :boolean
    add_column :jobs, :photo_uploaded_2, :boolean
    add_column :jobs, :photo_uploaded_3, :boolean
    add_column :jobs, :photo_uploaded_4, :boolean
    add_column :jobs, :photo_uploaded_5, :boolean
    add_column :jobs, :photo_uploaded_6, :boolean
    add_column :jobs, :photo_uploaded_7, :boolean
    add_column :jobs, :photo_uploaded_8, :boolean
  end
end
