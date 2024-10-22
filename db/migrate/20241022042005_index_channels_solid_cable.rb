class CreateIndexChannels < ActiveRecord::Migration[7.0]
  def change
    add_index :solid_cable_messages, [:channel], name: "index_channels_solid_cable"
  end
end
