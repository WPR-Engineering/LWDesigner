class CreateGpioTerminals < ActiveRecord::Migration[5.1]
  def change
    create_table :gpio_terminals do |t|
      t.string :name
      t.integer :pin
      t.text :description
      t.integer :lwchannel
      t.text :notes
      t.belongs_to :node_gpio, foreign_key: true

      t.timestamps
    end
  end
end
