class RemovePowerStationIdFromGpioTerminals < ActiveRecord::Migration[5.1]
  def change
    remove_column :gpio_terminals, :belongs_to, :power_station
  end
end
