class AddPowerstationIdToNodeInput < ActiveRecord::Migration[5.1]
  def change
    add_reference :node_inputs, :powerStation, foreign_key: true
  end
end
