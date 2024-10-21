class AddStoreToReturns < ActiveRecord::Migration[7.1]
  def change
    add_column :returns, :store, :string
  end
end
