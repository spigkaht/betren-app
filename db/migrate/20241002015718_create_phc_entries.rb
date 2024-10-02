class CreatePhcEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :phc_entries do |t|

      t.timestamps
    end
  end
end
