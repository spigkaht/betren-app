class AddPhotoUrlToReturns < ActiveRecord::Migration[7.1]
  def change
    add_column :returns, :damage_photo_url, :string
  end
end
