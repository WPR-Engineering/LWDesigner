class AddPortToGpioTerminal < ActiveRecord::Migration[5.1]
  def change
    add_column :gpio_terminals, :port, :integer
  end
end
