class AddDirectionToGpioTerminals < ActiveRecord::Migration[5.1]
  def change
    add_column :gpio_terminals, :ioDirection, :string
  end
end
