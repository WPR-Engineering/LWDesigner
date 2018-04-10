class CreateWires < ActiveRecord::Migration[5.1]
  def change
    create_table :wires do |t|
      t.string :code
      t.string :number
      t.string :type
      t.string :color
      t.string :termination
      t.text :description

      t.timestamps
    end
  end
end
