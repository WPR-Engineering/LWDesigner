class RemovePowerstationIdFromNodeOutput < ActiveRecord::Migration[5.1]
  def change
    remove_column :node_outputs, :belongs_to, :powerstation
  end
end
