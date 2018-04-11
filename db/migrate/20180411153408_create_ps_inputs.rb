class CreatePsInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :ps_inputs do |t|
      t.string :name
      t.text :inputDescription
      t.integer :lwChannel
      t.boolean :shared
      t.string :sourceMode
      t.integer :gain
      t.boolean :disabled
      t.text :notes
      t.belongs_to :power_station

      t.timestamps
    end
  end
end
