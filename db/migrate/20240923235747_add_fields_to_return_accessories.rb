class AddFieldsToReturnAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :return_accessories, :name, :string
    add_reference :return_accessories, :return, null: false, index: true
  end
end
