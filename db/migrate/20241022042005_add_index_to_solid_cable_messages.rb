class AddIndexToSolidCableMessages < ActiveRecord::Migration[7.0]
  def change
    add_index :solid_cable_messages, [:channel], name: "index_solid_cable_messages_on_channel"
  end
end
