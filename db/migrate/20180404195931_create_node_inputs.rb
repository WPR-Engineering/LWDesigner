class CreateNodeInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :node_inputs do |t|
      t.string :name
      t.text :inputDescription
      t.integer :lwChannel
      t.boolean :shared
      t.string :sourceMode
      t.integer :gain
      t.boolean :disabled
      t.text :notes
      t.belongs_to :node, foreign_key: true

      t.timestamps
    end
  end
end
