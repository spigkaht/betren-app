class CreateJobData < ActiveRecord::Migration[7.1]
  def change
    create_table :job_data do |t|
      t.string :item_num
      t.string :header
      t.string :part_num
      t.string :store
      t.string :opid
      t.string :opnm
      t.boolean :fuel_req
      t.float :fuel
      t.float :hours
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.datetime :completed_at

      t.timestamps
    end
  end
end
