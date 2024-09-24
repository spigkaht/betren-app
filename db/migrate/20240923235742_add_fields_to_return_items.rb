class AddFieldsToReturnItems < ActiveRecord::Migration[7.1]
  def change
    add_column :return_items, :key, :string
    add_column :return_items, :name, :string
    add_column :return_items, :dbmm, :string
    add_column :return_items, :fuel, :string
    add_column :return_items, :hours, :string
    add_column :return_items, :return_qty, :string
    add_reference :return_items, :return, null: false, index: true
  end
end
