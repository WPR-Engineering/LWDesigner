class AddPowerstationIdToNodeOutput < ActiveRecord::Migration[5.1]
  def change
    add_reference :node_outputs, :powerStation, foreign_key: true
  end
end
