class CreatePowerStations < ActiveRecord::Migration[5.1]
  def change
    create_table :power_stations do |t|
      t.string :hostname
      t.text :location
      t.string :macAddress
      t.string :ipAddress
      t.string :subnetmask
      t.string :serialNumber

      t.timestamps
    end
  end
end
