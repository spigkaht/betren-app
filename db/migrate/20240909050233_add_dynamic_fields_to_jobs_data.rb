class AddDynamicFieldsToJobsData < ActiveRecord::Migration[7.1]
  def change
    add_column :job_data, :bool_fields, :jsonb, default: {}
    add_column :job_data, :accessory_fields, :jsonb, default: {}
  end
end
