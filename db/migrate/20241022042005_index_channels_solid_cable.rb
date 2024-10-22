class CreateSolidCableMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :solid_cable_messages do |t|
      t.string :channel
      t.text :payload
      t.timestamps
    end

    add_index :solid_cable_messages, :channel
  end
end
