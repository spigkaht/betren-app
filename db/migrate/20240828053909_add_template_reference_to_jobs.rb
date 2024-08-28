class AddTemplateReferenceToJobs < ActiveRecord::Migration[7.1]
  def change
    add_reference :jobs, :template, foreign_key: true
  end
end
