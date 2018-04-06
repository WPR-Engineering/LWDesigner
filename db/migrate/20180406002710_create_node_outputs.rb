class CreateNodeOutputs < ActiveRecord::Migration[5.1]
  def change
    create_table :node_outputs do |t|
      t.string :destination
      t.text :outputDescription
      t.integer :selectedChannel
      t.string :mode
      t.integer :gain
      t.text :notes
      t.belongs_to :node, foreign_key: true

      t.timestamps
    end
  end
end
