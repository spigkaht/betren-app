class IndexChannelsSolidCable < ActiveRecord::Migration[6.1]
  def change
    add_index :solid_cable_messages, [:channel], name: "index_channels_solid_cable"
  end
end
