class CreateReturnAccessories < ActiveRecord::Migration[7.1]
  def change
    create_table :return_accessories do |t|

      t.timestamps
    end
  end
end
