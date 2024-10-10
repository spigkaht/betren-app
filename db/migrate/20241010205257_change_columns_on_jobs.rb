class ChangeColumnsOnJobs < ActiveRecord::Migration[7.1]
  def change
    remove_column :jobs, :photo_uploaded
    remove_column :jobs, :photo_uploaded_1
    remove_column :jobs, :photo_uploaded_2
    remove_column :jobs, :photo_uploaded_3
    remove_column :jobs, :photo_uploaded_4
    remove_column :jobs, :photo_uploaded_5
    remove_column :jobs, :photo_uploaded_6
    remove_column :jobs, :photo_uploaded_7
    remove_column :jobs, :photo_uploaded_8
    add_column :jobs, :photo_url, :string
    add_column :jobs, :photo_url1, :string
    add_column :jobs, :photo_url2, :string
    add_column :jobs, :photo_url3, :string
    add_column :jobs, :photo_url4, :string
    add_column :jobs, :photo_url5, :string
    add_column :jobs, :photo_url6, :string
    add_column :jobs, :photo_url7, :string
    add_column :jobs, :photo_url8, :string
  end
end
