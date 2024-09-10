class AddStoreToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :store, :string
  end
end
