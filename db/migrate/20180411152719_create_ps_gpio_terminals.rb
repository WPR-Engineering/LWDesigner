class CreatePsGpioTerminals < ActiveRecord::Migration[5.1]
  def change
    create_table :ps_gpio_terminals do |t|
      t.string :name
      t.integer :pin
      t.text :description
      t.integer :lwchannel
      t.text :notes
      t.string :ioDirection
      t.integer :port
      t.belongs_to :power_station

      t.timestamps
    end
  end
end
