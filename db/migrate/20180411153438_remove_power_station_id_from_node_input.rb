class RemovePowerStationIdFromNodeInput < ActiveRecord::Migration[5.1]
  def change
    remove_column :node_inputs, :belongs_to, :powerstation
  end
end
