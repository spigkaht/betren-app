class CreateReturnItems < ActiveRecord::Migration[7.1]
  def change
    create_table :return_items do |t|

      t.timestamps
    end
  end
end
