class AddPhotoQtyToTemplates < ActiveRecord::Migration[7.1]
  def change
    add_column :templates, :photo_qty, :integer
  end
end
