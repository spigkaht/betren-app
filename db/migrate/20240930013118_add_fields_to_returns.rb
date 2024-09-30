class AddFieldsToReturns < ActiveRecord::Migration[7.1]
  def change
    add_column :returns, :damage, :boolean
    add_column :returns, :damage_notes, :text
    add_column :returns, :damage_photo, :string
    add_column :returns, :taped, :boolean
    add_column :returns, :notes_attached, :boolean
    add_column :returns, :notes, :text
  end
end
