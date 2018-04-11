class RenameSelectedChannelInPsOutput < ActiveRecord::Migration[5.1]
  def change
    rename_column :ps_outputs, :slectedChannel, :selectedChannel
  end
end
