class CreateReturns < ActiveRecord::Migration[7.1]
  def change
    create_table :returns do |t|

      t.timestamps
    end
  end
end
