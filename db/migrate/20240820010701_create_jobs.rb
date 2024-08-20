class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :item_num, null: false
      t.datetime :completed_at

      t.timestamps
    end

    add_index :jobs, :item_num
  end

  def self.connection
    ActiveRecord::Base.establish_connection(:secondary).connection
  end
end
