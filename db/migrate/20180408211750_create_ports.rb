class CreatePorts < ActiveRecord::Migration[5.1]
  def change
    create_table :ports do |t|
      t.integer :number
      t.string :type
      t.string :description
      t.belongs_to :networking, foreign_key: true

      t.timestamps
    end
  end
end
