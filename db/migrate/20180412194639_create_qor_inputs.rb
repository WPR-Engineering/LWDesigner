class CreateQorInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :qor_inputs do |t|
      t.string :name
      t.text :inputDescription
      t.integer :lwChannel
      t.boolean :shared
      t.string :sourceMode
      t.integer :gain
      t.boolean :disabled
      t.text :notes
      t.belongs_to :qor

      t.timestamps
    end
  end
end
