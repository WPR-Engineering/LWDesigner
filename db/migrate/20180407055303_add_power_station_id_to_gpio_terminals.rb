class AddPowerStationIdToGpioTerminals < ActiveRecord::Migration[5.1]
  def change
    add_reference :gpio_terminals, :power_station, foreign_key: true
  end
end
