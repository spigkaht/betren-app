class AddJerryToReturnItems < ActiveRecord::Migration[7.1]
  def change
    add_column :return_items, :jerry, :boolean
  end
end
