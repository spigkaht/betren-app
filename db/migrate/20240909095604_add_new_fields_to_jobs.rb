class AddNewFieldsToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :header, :string
    add_column :jobs, :part_num, :string
    add_column :jobs, :opid, :string
    add_column :jobs, :opnm, :string
    add_column :jobs, :fuel_req, :boolean
    add_column :jobs, :fuel, :float
    add_column :jobs, :hours, :float
    add_column :jobs, :bool_fields, :jsonb, default: {}
    add_column :jobs, :accessory_fields, :jsonb, default: {}
  end
end
