class AddJobReferenceToJobData < ActiveRecord::Migration[7.1]
  def change
    add_reference :job_data, :job, foreign_key: true
  end
end
