class CreatePsOutputs < ActiveRecord::Migration[5.1]
  def change
    create_table :ps_outputs do |t|
      t.string :destination
      t.text :outputDescription
      t.integer :slectedChannel
      t.string :mode
      t.integer :gain
      t.text :notes
      t.belongs_to :power_station

      t.timestamps
    end
  end
end
